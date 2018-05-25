const logger = require('winston').loggers.get('Document Parsing');
const HandlerUtils = require('./common/HandlerUtils');


/**
 * Callbacks used here are for handling issues
 * @callback handler
 * @param {Handle} handle - string used for error message
 * @param {string} result - string used for the result message for completion
 */

/**
 * The class that is used to generate documents abstractly
 * @param {string} reqFile - file that is used to generate the desired file (refer to getReqFileTypes)
 * @param {function} generateDocument - function that builds the document
 * @param {function} constructDataBinder - function that builds the binder object
 * @param {function} getDocumentExt - function that gets the document extension
 * @param {function} getReqFileTypes - gets all acceptable required file formats
 * @param {handler} callback - callback on completion
 */
function DocumentGenerator(reqFile,generateDocument,constructDataBinder,getDocumentExt,getReqFileTypes,callback) {
    
    /**
     * Generates a document using a required file with the given
     * file name
     * @param {string} filename - the desired file name that we wish to use as reference
     * @param {handler} callback - handles errors and completion
     * @returns {string} - The file name that was actually used
     */ 
    this.generateDocument = generateDocument;

    /**
     * Handles building the structure of the data model used to translate to the new file
     * @param {handler} callback - handles errors and completeion
     * @returns {object} - returns the mappings used for document building
     */
    this.constructDataBinder = constructDataBinder;

    /**
     * Gets the file type extension for building the full path name
     * REMEMBER THAT YOU WILL NEED TO PRE-APPEND . BEFORE THIS FUNCTION CALL
     * @returns {string} - the file type extension
     */
    this.getDocumentExt = getDocumentExt;

    /**
     * Returns the different file types that can be used to generate the desired file
     * @returns {Array} - the file type requirements
     */
    this.getReqFileTypes = getReqFileTypes;

    //do checks on the validity of the reqFile
    var regexFullPath = new RegExp('^[A-Za-z]:((\\\\|\\/)[A-Za-z0-9\\s_@\\-^!#$%&+={}\\[\\]]+)+\\.(' + getReqFileTypes().join('|') + ')$','g');
    var regexLocalPath = new RegExp('^(\\.\\\\|\\.\\/|\\.\\.\\/|\\.\\.\\\\)*\\.?[A-Za-z0-9\\s_@\\-^!#$%&+={}\\[\\]]+\\.(' + getReqFileTypes().join('|') + ')$','g');
    logger.log('debug', 'regex full string: ' + regexFullPath);
    logger.log('debug', 'regex local string: ' + regexLocalPath);

    if (regexFullPath.test(reqFile)) {
        logger.log('debug', "'%s' is a fully pathed file", reqFile);
    } else if (regexLocalPath.test(reqFile)) {
        logger.log('debug', "'%s' is a locally pathed file", reqFile);
    } else {
        //sends the generator 
        if (callback) callback(new HandleUtils.Handle(HandleUtils.errorEnums.error,'the required file was not properly pathed', this), null);
    }
    this.reqFile = reqFile;
    if (callback) callback(null, 'The required file was a correct type (' + getReqFileTypes().join(',') + ')');

    //TODO: try to freeze the object so it's immutable
}

module.exports = DocumentGenerator;