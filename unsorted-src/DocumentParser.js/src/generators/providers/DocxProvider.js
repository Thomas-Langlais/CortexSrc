/**
 * The basic table layout provider class that will build tbl components for
 * you to fill data
 */
const TableProvider = (function () {

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

    function TableProvider() {
        
        this.xmlBuilder = require('xmlbuilder');
        this.tblAlignVal = /start|end|center/;
        this.tblBorderVal = /single|dashDotStroked|dashed|dashSmallGap|dotDash|dotDotDash|dotted|double|doubleWave|inset|nil|none|outset|thick|thickThinLargeGap|thickThinMediumGap|thickThinSmallGap|thinThickLargeGap|thinThickMediumGap|thinThickSmallGap|thinThickThinLargeGap|thinThickThinMediumGap|thinThickThinSmallGap|threeDEmboss|threeDEngrave|triple|wave/;
        this.tblRowHeightRules = /atLeast|exact|auto/;
        this.tblRowCellTcWType = /auto|dxa|nil|pct/;
        this.tblRowCellVAlign = /bottom|center|top/;
    };

    /**
     * @returns {object} - returns the ooxml table obj with depth 1 children
     */
    TableProvider.prototype.buildTbl = function(tblPr, tblGrid, ...trs) {

        let tbl = this.xmlBuilder.create('tbl', {
            headless: true,
            stringify: new TableConverter()
        });

        if (tblPr) tbl.importDocument(tblPr);
        if (tblGrid) tbl.importDocument(tblGrid);
        if (trs) {
            trs.forEach(tr => {
                tbl.importDocument(tr);
            });
        }
        return tbl;
    };

    /**
     * @param {boolean} empty - build an empty node
     * @returns {object} - returns the ooxml table property obj with depth 1 children
     */
    TableProvider.prototype.buildTblPr = function(empty = true) {
        
        if (!empty) {
            return this.xmlBuilder.create({
                tblPr: {
                    js: null,
                    shd: null,
                    tblBorders: null,
                    tblCaption: null,
                    tblCellMar: null,
                    tblCellSpacing: null,
                    tblInd: null,
                    tblLayout: null,
                    tblLook: null,
                    tblOverlay: null,
                    tblpPr: null,
                    tblStyle: null,
                    tblStyleColBandSize: null,
                    tblStyleRowBandSize: null,
                    tblW: null
                }
            }, commonSettings());
        }
    };

    /**
     * Builds the grid element with data
     * @param {number} cols - the number of columns
     * @param {number} width - the width of the table
     * @param {boolean} includeRoot - whether or not to include the parent node or not
     * @returns {object} - the tableGrid
     */
    TableProvider.prototype.buildTblGrid = function(cols, width) {
        
        if (typeof cols !== 'number' || cols <= 0) {
            return;
        }
        if (typeof width !== 'number' || width <= 0) {
            return;
        }

        let grid = this.xmlBuilder.begin({
            headless: true,
            stringify: new TableConverter()
        });
        grid = grid.ele('tblGrid');

        for (let i = 0; i < cols; i++) {
            grid
                .ele('gridCol')
                    .att('w', Math.floor(width / cols))
                .up();
        }
        
        return grid;
    };
    
    /**
     * Builds the tbl row obj with root
     */
    TableProvider.prototype.buildTblRow = function(includeRoot = true) {
        return this.xmlBuilder.create({
            tr: {
                trPr: null,
                tblPrEx: null,
                tc: null
            }
        }, {
            headless: true,
            stringify: new TableConverter()
        });
    };

    /**
     * Build the jc object
     * @param {string} val - an enum to insert into the property
     * @return {object} - the jc object
     */
    TableProvider.prototype.buildJc = function(val) {

        if (typeof val !== 'string') {
            return;
        }

        if (!val.match(this.tblAlignVal)) val = 'start';

        return this.xmlBuilder.create({
            jc: {
                '@val': val
            }
        }, {
            headless: true,
            stringify: new TableConverter()
        });
    };

    /**
     * build the base tblBorders obj
     * @param {boolean} includeRoot - whether or not to include the parent node or not
     * @returns {object} - the tblBorder object
     */
    TableProvider.prototype.buildTblBorders = function(includeRoot = true) {

        return this.xmlBuilder.create({
            tblBorders: {
                top: null,
                start: null,
                bottom: null,
                end: null,
                insideH: null,
                insideV: null
            }
        }, {
            headless: true,
            stringify: new TableConverter()
        });
    };

    /**
     * builds the border attribute for table property and table cell property
     * @param {string} val - an attribute from a list
     * @param {string} color - an RRGGBB color string
     * @param {number} sz - the width of the border
     * @param {number} space - the space between borders
     * @returns {object} - the border attributes property object
     */
    TableProvider.prototype.buildTblBordersAttr = function(val, color = '000000', sz = 2, space = 0) {
        
        if (typeof color !== 'string' || !/[0-9a-fA-F]{6}/.test(color)) {
            return;
        }
        if (typeof sz !== 'number' || sz < 2) {
            return;
        }
        if (typeof space !== 'number' || space < 0) {
            return;
        }
        if (typeof val !== 'string') {
            return;
        }

        if (this.tblBorderVal.test(val)) {
            return this.xmlBuilder.create({
                    '@color': color,
                    '@space': space,
                    '@sz': sz,
                    '@val': val
                }, {
                    headless: true,
                    stringify: new TableConverter()
                });
        }
        
        return this.xmlBuilder.create({
                '@color': color,
                '@space': space,
                '@sz': sz,
                '@val': 'single'
            }, {
                headless: true,
                stringify: new TableConverter()
            });
    }

    /**
     * builds the tbl cell margin object
     * @param {boolean} includeRoot - whether or not to include the parent node or not
     * @returns {object} - returns the tblCellMar object
     */
    TableProvider.prototype.buildTblPrCellMar = function(includeRoot = true) {

        return this.xmlBuilder.create({
            tblCellMar: {
                top: null,
                start: null,
                end: null,
                bottom: null
            }
        }, {
            headless: true,
            stringify: new TableConverter()
        });
    };

    /**
     * builds the margin attribute object
     * @param {number} width - the width of the margin attribute
     * @returns {object} - the tblMar attribute object
     */
    TableProvider.prototype.buildTblPrMarAttr = function(width) {
        
        if (typeof width !== 'number' || width < 0) {
            return;
        }

        return this.xmlBuilder.create({
            '@w': width,
            '@type': 'dxa'
        }, {
            headless: true,
            stringify: new TableConverter()
        });
    }

    /**
     * builds the w:trPr object
     * @param {boolean} includeRoot - whether or not to include the parent node or not
     * @returns {object} - the w:trPr object
     */
    TableProvider.prototype.buildTblRowPr = function(includeRoot = true) {
        // make rule when cleaning the table object to excempt tblHeader and hidden to be wiped
        // when they are null (if  they are ANY val, just null it and use, BUT if null wipe)
        return this.xmlBuilder.create({
            trPr: {
                jc: null,
                tblHeader: null,
                trHeight: null,
                hidden: null
            }
        }, {
            headless: true,
            stringify: new TableConverter()
        });
    };

    /**
     * builds the w:trHeight object
     * @param {string} rule - the rule attribute
     * @param {number} val - the height of the row
     * @param {boolean} includeRoot - whether or not to include the parent node or not
     * @returns {object} - the w:trHeight object
     */
    TableProvider.prototype.buildTrHeight = function(rule, val, includeRoot = true) {

        if (typeof rule !== 'string') {
            return;
        }
        if (typeof val !== 'number' || val < 0) {
            return;
        }

        if (!rule.match(this.tblRowHeightRules)) rule = 'auto';

        return this.xmlBuilder.create({
            trHeight: {
                    '@hRule': rule,
                    '@val': val
            }
        }, {
            headless: true,
            stringify: new TableConverter()
        });
    }

    /**
     * builds w:tc object
     * @param {boolean} includeRoot - whether or not to include the parent node or not
     * @returns {object} - the w:tc object
     */
    TableProvider.prototype.buildTblRowCell = function(includeRoot = true) {

        return this.xmlBuilder.create({
            tc: {
                tcPr: null,
                p: null,
                tbl: null
            }
        }, {
            headless: true,
            stringify: new TableConverter()
        });
    };
    
    /**
     * builds w:tcPr object
     * @param {boolean} includeRoot - whether or not to include the parent node or not
     * @returns {object} - the w:tcPr object
     */
    TableProvider.prototype.buildTblRowCellPr = function(includeRoot = true) {
        // w:noWrap is null natural in anything but null -> keep
        return this.xmlBuilder.create({
            tcPr: {
                gridSpan: null,
                noWrap: null,
                tcBorders: null,
                tcMar: null,
                tcW: null,
                vAlign: null
            }
        }, {
            headless: true,
            stringify: new TableConverter()
        });
    };

    /**
     * builds w:tcBorders object
     * @param {boolean} includeRoot - whether or not to include the parent node or not
     * @returns {object} - the w:tcBorders object
     */
    TableProvider.prototype.buildTblRowCellBorders = function(includeRoot = true) {
        
            return this.xmlBuilder.create({
                tcBorders: {
                    top: null,
                    start: null,
                    bottom: null,
                    end: null,
                    insideH: null,
                    insideV: null,
                    tl2br: null,
                    tr2bl: null
                }
            }, {
                headless: true,
                stringify: new TableConverter()
            });
    };

    /**
     * builds the w:tcW object
     * @param {number} width - the width of the table cell
     * @param {string} type - the type of the width table cell
     * @param {boolean} includeRoot - whether or not to include the parent node or not
     * @returns {object} - the w:tcW object
     */
    TableProvider.prototype.buildTcW = function(width, type, includeRoot = true) {

        if (typeof width !== 'number' || width < 0) {
            return;
        }
        if (typeof type !== 'string') {
            return;
        }

        let settings = {
            headless: true,
            stringify: new TableConverter()
        };

        if (!type.match(this.tblRowCellTcWType)) type = 'auto';

        if (includeRoot) {
            return this.xmlBuilder.create({
                tcW: {
                    '@w': width,
                    '@type': type
                }
            }, settings);
        } else {
            return this.xmlBuilder.create({
                '@w': width,
                '@type': type
            }, settings);
        }
    };

    /**
     * builds the w:vAlign object
     * @param {string} val - where the cell is centered vertically top|center|bottom
     * @param {boolean} includeRoot - whether or not to include the parent node or not
     * @returns {object} - the w:vAlign object
     */
    TableProvider.prototype.buildTblRowCellVAlign = function(val, includeRoot = true) {

        let settings = {
            headless: true,
            stringify: new TableConverter()
        };

        if (typeof val !== 'string') {
            return;
        }

        if (!val.match(this.tblRowCellVAlign)) val = 'top';

        if (includeRoot) {
            return this.xmlBuilder.create({
                vAlign: {
                    '@val': val
                }
            }, settings);
        } else {
            return this.xmlBuilder.create({
                '@val': val
            }, settings);
        }
    };

    return TableProvider;
})();

/**
 * The basic paragraph layout provider class that will build p components for
 * you to fill data
 */
const ParagraphProvider = (function () {

    function ParagraphConverter() {
        this.eleName = function(elementName) {
            return 'w:' + elementName;
        };
        this.attName = function(attributeName) {
            return 'w:' + attributeName;
        }
    }

    function ParagraphProvider() {

        this.xmlBuilder = require('xmlbuilder');
    }

    /**
     * builds the paragraph node obj
     * @param {boolean} withBookmark - whether to add a bookmarking
     * @returns {object} - the w:p node obj
     */
    ParagraphProvider.prototype.buildP = function(withBookmark) {

        if (!withBookmark) {
            return this.xmlBuilder.create({
                p: {
                    pPr: null,
                    r: null,
                    hyperlink: null
                }
            }, {
                headless: true,
                stringify: new ParagraphConverter()
            });
        } else {
            return this.xmlBuilder.create({
                p: {
                    pPr
                }
            })
        }
    };

    /**
     * builds the paragraph object 
     * @returns {object} - the w:p object
     */
    ParagraphProvider.prototype.buildPPr = function() {
        
            return this.xmlBuilder.create({
                pPr: {
                    ind: null,
                    jc: null,
                    pBdr: null,
                    pStyle: null,
                    rPr: null,
                    spacing: null,
                    tabs: null,
                    textAlignment: null
                }
            }, {
                headless: true,
                stringify: new ParagraphConverter()
            });
    };

    ParagraphProvider.prototype.buildHyperlink = function() {

    };


    return ParagraphProvider;
})();

const TextProvider = (function() {

})();

const ContentCtlProvider = (function() {

})();

exports.TableProvider = TableProvider;