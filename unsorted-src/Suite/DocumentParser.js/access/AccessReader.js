/**
 * Callbacks used here are for handling issues
 * @callback handler
 * @param {string} err - string used for error message
 * @param {string} result - string used for the result message for completion
 */

const winston = require('winston');
const languageEnum = require('../common/Enums').languageEnum;

//build a custom logger
winston.loggers.add('Database Reader', {
    console: {
        level: 'info',
        colorize: false,
        label: 'database-log'
    }
});


//build the constructor for the reader object
function DatabaseReader() {

    //get the logger
    let logger = winston.loggers.get('Database Reader');
    let connectionString = '';
    let oledb = require('oledb');

    // /**
    //  * Gets the default value from the quad table
    //  * @param {string} suid 
    //  * @param {handler} callback
    //  * @returns {string} default value of the quad with the id @param {string} suid
    //  */
    // this.getDefaultValue = function(suid) {
    //     if (!(suid && typeof(suid) === "string")) throw new Error('suid is not a string');

    //     //assume proper formatting for now FIX later
    //     let db = oledb.oledbConnection(connectionString);
    //     let command = 'select * from tblQuad';

    //     logger.log('info', "Begining to execute query '" + command + "'");
    //     let resultSet = await db.query(command);

    //     if (resultSet) {
    //         if (resultSet.result[0].QuadTextSchemaID === suid) {
    //             return data.result[0].QuadTextValueEng;
    //         } else {
    //             throw new Error("The id's do not match... weird");
    //         }
    //     }
    // }

    // /**
    //  * Gets the description of the quad value in any of the supported language types
    //  * @param {string} suid 
    //  * @param {string} lang 
    //  * @param {handler} callback
    //  * @returns {string} the description in any of the supported languages with the id @param {string} suid
    //  */
    // this.getDescription = async function(suid, lang, callback) {
    //     //some preliminary checks
    //     if (!(suid && typeof(suid) === "string")) {
    //         if (callback) callback("suid is not given or isn't a string");
    //         return;
    //     }
    //     if (!(lang && typeof(lang) === "string")) {
    //         if (callback) callback("suid is not given or isn't a number");
    //         return;
    //     }

    //     let db = oledb.oledbConnection(connectionString);
    //     let command = 'select * from lkpSchemaPIT as S inner join lkpSchemaPITChronology as SC on S.UID = SC.UID where SC.ID = @id';
        
    //     logger.log('info', "Begining to execute query '" + command + "'");
    //     let data = await db.query(command,[suid]);

    //     if (data) {
    //         if (languageEnum.english === lang) {
    //             if (callback) callback(null, data.result[0].lkpSchemaDescriptionEng);
    //             return data.result[0].lkpSchemaDescriptionEng;
    //         } else if (languageEnum.french === lang) {
    //             if (callback) callback(null, data.result[0].lkpSchemaDescriptionFra);
    //             return data.result[0].lkpSchemaDescriptionFra;
    //         } else {
    //             if (callback) callback("The language '" + lang + "' is not supported");
    //             return;
    //         }
    //     }
    // }

    // /**
    //  * Gets the name of the quad value in an
    //  * @param {string} suid 
    //  * @param {string} lang 
    //  * @param {handler} callback
    //  * @returns {string} the name of the schema with the id @param {string} suid
    //  */
    // this.getName = async function(suid, lang, callback) {
    //     //some preliminary checks
    //     if (!(suid && typeof(suid) === "string")) {
    //         if (callback) callback("suid is not given or isn't a string");
    //         return;
    //     }
    //     if (!(lang && typeof(lang) === "string")) {
    //         if (callback) callback("suid is not given or isn't a number");
    //         return;
    //     }

    //     let db = oledb.oledbConnection(connectionString);
    //     let command = 'select * from lkpSchemaPIT as S inner join lkpSchemaPITChronology as SC on S.UID = SC.UID where SC.ID = @id';
        
    //     logger.log('info', "Begining to execute query '" + command + "'");
    //     let data = await db.query(command,[suid]);

    //     if (data) {
    //         if (languageEnum.english === lang) {
    //             if (callback) callback(null, data.result[0].lkpSchemaTitleEng);
    //             return data.result[0].lkpSchemaTitleEng;
    //         } else if (languageEnum.french === lang) {
    //             if (callback) callback(null, data.result[0].lkpSchemaTitleFra);
    //             return data.result[0].lkpSchemaTitleFra;
    //         } else {
    //             if (callback) callback("The language '" + lang + "' is not supported");
    //             return;
    //         }
    //     }
    // }

    // /**
    //  * Gets the max occurences of the schema
    //  * @param {string} suid
    //  * @returns {string} the max occurences in the schema with the id @param {string} suid
    //  */
    // this.getMaxOccurs = async function(suid) {
    //     if (!(suid && typeof(suid) === "string")) {
    //         logger.error("suid is not given or isn't a string");
    //         return;
    //     }

    //     let db = oledb.oledbConnection(connectionString);
    //     let command = 'select * from lkpSchemaPIT as S inner join lkpSchemaPITChronology as SC on S.UID = SC.UID where SC.ID = @id';
        
    //     logger.info("Begining to execute query '" + command + "'");
    //     let data = await db.query(command,[suid]);

    //     if (data) {
    //         return data.result[0].XSDMaxOccurs
    //     }
    // }

    this.getAllQuads = function() {
        let db = oledb.oledbConnection(connectionString);
        let command = 'select * from tblQuad';

        let data = db.query(command);
        return data;
    }

}

//create singleton
const databaseReader = Object.freeze(new DatabaseReader());

//export
module.exports = databaseReader;