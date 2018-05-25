
const maxTblSize = 9350;

/**
 * Builds the xml2js object of a docx table
 * @param {number} row the number of rows to build
 * @param {number} col the number of columns to build
 */
exports.buildTable = function buildTable(rows, cols) {
    let grid = {
        "w:gridCol": []
    };


    for (let i = 0; i < cols; i++) {
        grid['w:gridCol'].push({
            $: {
                "w:w": Math.floor(maxTblSize / cols)
            }
        });
    }

    //build the template
    let tableTpl = {
        "w:tbl": {
            "w:tblPr": {
            },
            "w:tblGrid": {
            },
            "w:tr": []
        }
    };

    //generate
    for (let i = 0; i < rows; i++) {
        let cells = [];
        for (let j = 0; j < cols; j++) {
            //use to template to populate data
            let tableCellTpl = {
                "w:tc": {
                    "w:tcPr": {
            
                    }
                }
            };

            cells.push(tableCellTpl);
        }

        tableCellTpl['w:tbl']['w:tr'].push(cells);
    }

    return tableTpl;
}

exports.buildText = function buildText() {

}

exports.buildCheckBox = function buildCheckBox() {

}

exports.buildDropDownList = function buildDropDownList() {

}

exports.buildComboBox = function buildComboBox() {

}

exports.buildRepeatingList = function buildRepeatingList() {

}

exports.buildHeader = function buildHeader() {

}

exports.buildFooter = function buildFooter() {

}

exports.buildImage = function buildImage() {
    
}

exports.buildWatermark = function buildWatermark() {

}