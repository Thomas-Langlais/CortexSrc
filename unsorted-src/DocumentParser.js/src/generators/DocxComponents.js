

function buildDataBinding() {

}

/**
 * Builds the xml2js object of a docx table
 * @param {number} row the number of rows to build
 * @param {number} col the number of columns to build
 */
function buildTable(rows, cols, width = defaultTblSize) {
    //error handling for garbo data
    if (rows < 1) {
        return;
    }
    if (cols < 1) {
        return;
    }

    for (let i = 0; i < cols; i++) {
        let obj = Object.assign({}, gridAttrWidth);
        let myGrid = Object.assign({}, grid);
        obj.$['w:w'] = Math.floor(width / cols);
        myGrid['w:gridCol'].push(obj);
    }

    //build the template
    let tableTpl = {
        "w:tbl": {
            "w:tblPr": {
                "w:jc": {

                },
                "w:tblW": {
                    $: {
                        "w:type": "dxa",
                        "w:w": width
                    }
                },
                'w:tblBorders': tableBorder
            },
            "w:tblGrid": myGrid,
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

        tableTpl['w:tbl']['w:tr'].push(cells);
    }

    return tableTpl;
}

function buildText() {

}

function buildCheckBox() {

}

function buildDropDownList() {

}

function buildComboBox() {

}

function buildRepeatingList() {

}

function buildHeader() {

}

function buildFooter() {

}

function buildImage() {
    
}

function buildWatermark() {

}

function buildHyperlink() {

}

exports.buildDataBinding = buildDataBinding;
exports.buildTable = buildTable;
exports.buildText = buildText;
exports.buildCheckBox = buildCheckBox;
exports.buildDropDownList = buildDropDownList;
exports.buildComboBox = buildComboBox;
exports.buildRepeatingList = buildRepeatingList;
exports.buildHeader = buildHeader;
exports.buildFooter = buildFooter;
exports.buildImage = buildImage;
exports.buildWatermark = buildWatermark;
exports.buildHyperlink = buildHyperlink;