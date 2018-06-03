
const TableBuilder = (function() {

    const xmlbuilder = require('xmlbuilder');
    const XMLDocument = require('xmlbuilder/lib/XMLDocument'), XMLElement = require('xmlbuilder/lib/XMLElement');

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
            let res = xmlbuilder.begin(commonSettings());
            option.forEach(doc => res.importDocument(optionHandler(doc)));
            return res;
        } 
        else {
            return xmlbuilder.begin(commonSettings()).ele(option).doc();
        }
    }

    function TableBuilder() {

    };

    TableBuilder.prototype.tbl = function(options = {}) {
        
        let result = xmlbuilder.begin(commonSettings());
        let node = result.ele('tbl');

        if (options.tblPr) {
            let doc = optionHandler(options.tblPr);
            node.importDocument(doc);
        }
        if (options.tblGrid) {
            let doc = optionHandler(options.tblGrid);
            node.importDocument(doc);
        }
        if (options.tr) {
            let doc = optionHandler(options.tr);
            node.importDocument(doc);
        }

        return result;
    };

    TableBuilder.prototype.tblPr = function(options) {

        let result = xmlbuilder.begin(commonSettings());
        let node = result.ele('tblPr');

        if (options.jc) {
            let doc = optionHandler(options.jc);
            node.importDocument(doc);
        }
        if (options.shd) {
            let doc = optionHandler(options.shd);
            node.importDocument(doc);
        }
        if (options.tblBorders) {
            let doc = optionHandler(options.tblBorders);
            node.importDocument(doc);
        }
        if (options.tblCaption) {
            let doc = optionHandler(options.tblCaption);
            node.importDocument(doc);
        }
        if (options.tblCellMar) {
            let doc = optionHandler(options.tblCellMar);
            node.importDocument(doc);
        }
        if (options.tblCellSpacing) {
            let doc = optionHandler(options.tblCellSpacing);
            node.importDocument(doc);
        }
        if (options.tblInd) {
            let doc = optionHandler(options.tblInd);
            node.importDocument(doc);
        }
        if (options.tblLayout) {
            let doc = optionHandler(options.tblLayout);
            node.importDocument(doc);
        }
        if (options.tblLook) {
            let doc = optionHandler(options.tblLook);
            node.importDocument(doc);
        }
        if (options.tblOverlap) {
            let doc = optionHandler(options.tblOverlap);
            node.importDocument(doc);
        }
        if (options.tblpPr) {
            let doc = optionHandler(options.tblpPr);
            node.importDocument(doc);
        }
        if (options.tblStyle) {
            let doc = optionHandler(options.tblStyle);
            node.importDocument(doc);
        }
        if (options.tblStyleColBandSize) {
            let doc = optionHandler(options.tblStyleColBandSize);
            node.importDocument(doc);
        }
        if (options.tblStyleRowBandSize) {
            let doc = optionHandler(options.tblStyleRowBandSize);
            node.importDocument(doc);
        }
        if (options.tblW) {
            let doc = optionHandler(options.tblW);
            node.importDocument(doc);
        }

        return result;
    };

    TableBuilder.prototype.tblGrid = function(options) {
        result = xmlbuilder.begin(commonSettings());
        let node = result.ele('tblGrid');

        if (options.gridCol) {
            let doc = optionHandler(options.gridCol);
            node.importDocument(doc);
        }
    };

    TableBuilder.prototype.jc = function(options) {

    };

    TableBuilder.prototype.tblBorders = function(options) {

    };

    TableBuilder.prototype.tblCellMar = function(options) {

    };

    TableBuilder.prototype.tblInd = function(options) {

    };

    TableBuilder.prototype.tblLayout = function(options) {

    };

    TableBuilder.prototype.tblpPr = function(options) {

    };

    TableBuilder.prototype.tblStyle = function(options) {

    };

    TableBuilder.prototype.tblW = function(options) {

    };

    TableBuilder.prototype.tr = function(options) {

    };

    TableBuilder.prototype.trPr = function(options) {

    };
    
    TableBuilder.prototype.trPrEx = function(options) {

    };

    TableBuilder.prototype.tc = function(options) {

    };

    TableBuilder.prototype.tblHeader = function(options) {

    };

    TableBuilder.prototype.trHeight = function(options) {

    };
    
    TableBuilder.prototype.hidden = function(options) {

    };

    TableBuilder.prototype.tcPr = function(options) {

    };

    TableBuilder.prototype.p = function(options) {

    };

    TableBuilder.prototype.gridSpan = function(options) {

    };

    TableBuilder.prototype.noWrap = function(options) {

    };

    TableBuilder.prototype.tcBorders = function(options) {

    };

    TableBuilder.prototype.tcMar = function(options) {

    };

    TableBuilder.prototype.tcW = function(options) {

    };

    TableBuilder.prototype.vAlign = function(options) {

    };
    
    return TableBuilder;
})();

module.exports = TableBuilder;