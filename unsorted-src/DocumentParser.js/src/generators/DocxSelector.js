
exports.selector = selector = Object.freeze({
    tbl: 1,
    tblPr: 2,
    tblGrid: 3,
    jc: 4,
    tblBorders: 5,
    tblCellMar: 6,
    tblInd: 7,
    tblLayout: 8,
    tblpPr: 9,
    tblStyle: 10,
    tblW: 11,
    tr: 12,
    trPr: 13,
    trPrEx: 14,
    tc: 15,
    tblHeader: 16,
    trHeight: 17,
    hidden: 18,
    tcPr: 19,
    p: 20,
    gridSpan: 21,
    noWrap: 22,
    tcBorders: 23,
    tcMar: 24,
    tcW: 25,
    vAlign: 26
});

function TableConverter() {
    this.eleName = function(elementName) {
        return 'w:' + elementName;
    };
    this.attName = function(attributeName) {
        return 'w:' + attributeName;
    }
}

function commonSettings() {
    return {
        headless: true,
        stringify: new TableConverter()
    };
}

function optionHandler(option) {
    if (option instanceof XMLDocument) {
        return option;
    }
    else if (option instanceof XMLElement) 
    {
        return option.doc();
    }
    else if (Array.isArray(option)) {
        let res = [];
        option.forEach(doc => res.push(optionHandler(doc)));
    } 
    else {
        return xmlbuilder.begin(commonSettings()).ele(option).doc();
    }
}

const xmlbuilder = require('xmlbuilder');
const XMLDocument = require('xmlbuilder/lib/XMLDocument'), XMLElement = require('xmlbuilder/lib/XMLElement');

exports.buildComponent = function buildComponent(type, options) {

    let result;

    switch(type) {
        case selector.tbl:
            result = xmlbuilder.begin(commonSettings());
            let node = result.ele('tbl');

            if (options.tblPr) {
                let doc = optionHandler(options.tblPr);
                node.importDocument(doc);
            }
            if (options.tblGrid) {
                let doc = optionHandler(options.tblGrid);
                node.importDocument(options.tblGrid);
            }
            if (options.tr) {
                let doc = optionHandler(options.tr);
                node.importDocument(options.tr);
            }

            break;

        case selector.tblPr:
            result = xmlbuilder.begin(commonSettings());
            result.ele('tblPr');
            break;

        case selector.tblGrid:
            result = xmlbuilder.begin(commonSettings());
            result.ele('tblGrid');
            break;

        case selector.jc:
        
        case selector.tblBorders:
        case selector.tblCellMar:
        case selector.tblInd:
        case selector.tblLayout:
        case selector.tblpPr:
        case selector.tblStyle:
        case selector.tblW:
        case selector.tr:
        case selector.trPr:
        case selector.trPrEx:
        case selector.tc:
        case selector.tblHeader:
        case selector.trHeight:
        case selector.hidden:
        case selector.tcPr:
        case selector.p:
        case selector.gridSpan:
        case selector.noWrap:
        case selector.tcBorders:
        case selector.tcMar:
        case selector.tcW:
        case selector.vAlign:
        default:
    }

    return result;
}

function addComponent(type, object, options) {

}