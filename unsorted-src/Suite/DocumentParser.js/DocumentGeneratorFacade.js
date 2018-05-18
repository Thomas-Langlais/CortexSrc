const DocumentGenerator = require('./DocumentGenerator');
const HandleUtils = require('./common/HandlerUtils');
const logger = require('winston').loggers.get('Document Parsing');

/**
 * Callbacks used here are for handling issues
 * @callback handler
 * @param {Handle} handle - string used for error message
 * @param {string} result - string used for the result message for completion
 */

/**
 * Gets the file extension
 * @param {string} fname 
 */
function getFileExt(fname) {
    return fname.slice((fname.lastIndexOf(".") - 1 >>> 0) + 2);
}

//Mappings of all currently supported file types
var methodMappings = Object.freeze({
    xsl: Object.freeze({
        /**
         * Generates a document using a required file with the given
         * file name
         * @param {string} filename - the desired file name that we wish to use as reference
         * @param {handler} callback - the callback function for handling errors and completion
         * @returns {string} - The file name that was actually used
         */ 
        generateDocument: function(fileName, callback) {
            //for now
            return '';
        },

        /**
         * Handles building the structure of the data model used to translate to the new file
         * @param {handler} callback - the callback function to handle errors and completion
         * @returns {object} - returns the mappings used for document building
         */
        constructDataBinder: function(callback) {
            //for now
            return {};
        },

        /**
         * Gets the file type extension for building the full path name
         * REMEMBER THAT YOU WILL NEED TO PRE-APPEND . BEFORE THIS FUNCTION CALL
         * @returns {string} - xsl
         */
        getDocumentExt: function() {
            return 'xsl';
        },

        /**
         * Returns the different file types that can be used to generate the xsl file
         * @returns {Array} of all required file types that can be used in generating the xsl 
         * (this is used for potential changes in the future to be able to parse many files)
         */
        getReqFileTypes: function() {
            return ['xsd'];
        }
    })
});

class DocumentGeneratorFacade {
    
    constructor() {}

    /**
     * Handles creating a generator abstractly
     * @param {string} fileNameReq - The name of the the file we want to use to generate our desired file
     * @param {string} type - the type of file we want to generate
     * @param {handler} callback - handles both success and failure to build generator
     * @returns {DocumentGenerator} - returns the requested generator
     */
    documentGenerator(fileNameReq, type, callback) {
        //do some preliminary type checks
        if (typeof fileNameReq !== 'string') {
            if (callback) callback(new HandleUtils.Handle(HandleUtils.errorStateEnums.fatal, 'someone tried giving something other than a string for fileNameReq - be careful!', this), null);
            return null;
        }
        if (typeof type !== 'string') {
            if (callback) callback(new HandleUtils.Handle(HandleUtils.errorStateEnums.fatal, 'someone tried giving something other than a string for type - be careful!', this), null);
            return null;
        }

        //check to see if mappings exist
        var mappingSet = methodMappings[type];
        if (mappingSet == null || mappingSet == undefined) {
            if (callback) callback(new HandleUtils.Handle(HandleUtils.errorStateEnums.error, "there is no mapping for '" + type + "'", this), null);
            return null;
        }
        
        //check the required file type exists
        var requestedRequiredType = getFileExt(fileNameReq);
        
        if (mappingSet.getReqFileTypes().find(function(element) {
            return element == requestedRequiredType;
        }) == undefined) { //if file ext not found
            if (callback) callback(new HandleUtils.Handle(HandleUtils.errorStateEnums.error, "There is no type conversion for '" + requestedRequiredType + "'",this), null);
            return null;
        }

        //all checks pass... build the generator
        return new DocumentGenerator(fileNameReq,
            mappingSet.generateDocument,
            mappingSet.constructDataBinder,
            mappingSet.getDocumentExt,
            mappingSet.getReqFileTypes,
            function(handle, result) {
                if (handle) { //failed to complete
                    switch (handle.errorState) {
                        case (HandleUtils.errorStateEnums.error): //failed
                            logger.log('error',handle.description);
                            handle.description = 'Failed to build the generator';
                            if (callback) callback(handle, null);
                            break;
                        default:
                            logger.log('error',handle.description);
                            handle = new HandleUtils.Handle(handle.errorState, 'Unknown error occured', handle.sender);
                            if (callback) callback(handle, null);
                            break;
                    }
                } 
                if (result) {
                    logger.log('debug',result);
                }
            });
    }

    /**
     * Handles creating a xsl generator
     * @param {string} fileNameReq - The name of the the file we want to use to generate our desired file
     * @param {handler} callback - handles both success and failure to build generator
     * @param {DocumentGenerator} - returns an xsl generator
     */
    xslGenerator(fileNameReq, callback) {
        return this.documentGenerator(fileNameReq, 'xsl', callback);
    }
}

//this will define a immutable instance
const documentGeneratorFacade = Object.freeze(new DocumentGeneratorFacade());
//this limits to a single instance available
module.exports = documentGeneratorFacade;