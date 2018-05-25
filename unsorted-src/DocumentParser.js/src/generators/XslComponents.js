function Context() {
    // this.align;
    // this.class;
    // this.style;
    // this.id;
    this.element;
    this.attributes = [];
}

/**
 * builds the heirachecal xml data
 * @param {string} formName 
 * @param {object} fillableJson - components that need to be filled in the base form
 * @param {object} data - data from the database
 */
function buildRoot(formName, fillableJson, data) {
//we'll want to recurse into this function?
//lets start with non recursive
}

/**
 * 
 * @param {object} context 
 */
function buildNode(context) {
    
}

/**
 * 
 * @param {string} element 
 * @param {object} data
 * @returns {string} the xml string 
 */
function buildContainer(element, data) {
//need to analyze internal data to choose path
}

/**
 * 
 * @param {object} data
 * @returns enum choice
 */
function analyzeData(data) {

}
//default components
function buildStepRow(stepName)