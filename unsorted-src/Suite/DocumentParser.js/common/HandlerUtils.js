var errorStateEnum =  require('./Enums').errorStateEnum;

/**
 * A handle object that is passed through any call back to handle issues
 * @param {errorStateEnum} errorState - the state that the method was in in
 * @param {string} description
 * @param {object} sender - the object from where the error came from
 */
function Handle(errorState, description, sender) {
    this.errorState = errorState;
    this.description = description;
    this.sender = sender;
}

//packing both for convienence
module.exports = Object.freeze({
    errorStateEnums: errorStateEnum,
    Handle: Handle
});