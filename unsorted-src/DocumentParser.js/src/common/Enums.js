/**
 * This file is used to store all enums that are currently in the package...
 * Try to keep any and all enum here for cleaner code
 */

/**
 * Enum for error handling
 */
const errorStateEnum = Object.freeze({recoverable: 1, error: 2, fatal: 3});

/**
 * Enum for language handling
 */
const languageEnum = Object.freeze({english: 'eng', french: 'fra'});

/**
 * Enum for handling data filling for xsl 
 */
const xslFillEnum = Object.freeze({title: 1, description: 2, steps: 3});

//export all enums
module.exports = Object.freeze({
    errorStateEnum: errorStateEnum,
    languageEnum: languageEnum,
    xslFillEnum: xslFillEnum
});