
var TableProvider = (function () {
    function TableProvider() {
        
        this.tblAlignVal = /start|end|center/;
        this.tblBorderVal = /single|dashDotStroked|dashed|dashSmallGap|dotDash|dotDotDash|dotted|double|doubleWave|inset|nil|none|outset|thick|thickThinLargeGap|thickThinMediumGap|thickThinSmallGap|thinThickLargeGap|thinThickMediumGap|thinThickSmallGap|thinThickThinLargeGap|thinThickThinMediumGap|thinThickThinSmallGap|threeDEmboss|threeDEngrave|triple|wave/;
        this.tblRowHeightRules = /atLeast|exact|auto/;
    };

    /**
     * @param {boolean} includeRoot - whether we include the root node or not
     * @returns {object} - returns the ooxml table obj with depth 1 children
     */
    TableProvider.prototype.buildTbl = function(includeRoot = true) {
        
        let tbl;

        if (includeRoot) {
            tbl = {
                'w:tbl': {
                    'w:tblPr': null,
                    'w:tblGrid': null,
                    'w:tr': []
                }
            };
        } else {
            tbl = {
                'w:tblPr': null,
                'w:tblGrid': null,
                'w:tr': []
            };
        }
        
        return tbl;
    };

    /**
     * @param {boolean} includeRoot - whether we include the root node or not
     * @returns {object} - returns the ooxml table property obj with depth 1 children
     */
    TableProvider.prototype.buildTblPr = function(includeRoot = true) {
        
        let tablePr;
        if (includeRoot) {
            tablePr = {
                'w:tblPr': {
                    'w:js': null,
                    'w:shd': null,
                    'w:tblBorders': null,
                    'w:tblCaption': null,
                    'w:tblCellMar': null,
                    'w:tblCellSpacing': null,
                    'w:tblInd': null,
                    'w:tblLayout': null,
                    'w:tblLook': null,
                    'w:tblOverlay': null,
                    'w:tblpPr': null,
                    'w:tblStyle': null,
                    'w:tblStyleColBandSize': null,
                    'w:tblStyleRowBandSize': null,
                    'w:tblW': null
                }
            };
        } else {
            tablePr = {
                'w:js': null,
                'w:shd': null,
                'w:tblBorders': null,
                'w:tblCaption': null,
                'w:tblCellMar': null,
                'w:tblCellSpacing': null,
                'w:tblInd': null,
                'w:tblLayout': null,
                'w:tblLook': null,
                'w:tblOverlay': null,
                'w:tblpPr': null,
                'w:tblStyle': null,
                'w:tblStyleColBandSize': null,
                'w:tblStyleRowBandSize': null,
                'w:tblW': null
            };
        }

        return tablePr;
    };

    /**
     * Builds the grid element with data
     * @param {number} cols - the number of columns
     * @param {number} width - the width of the table
     * @param {boolean} includeRoot - whether to include the root node or not
     * @returns {object} - the tableGrid
     */
    TableProvider.prototype.buildTblGrid = function(cols, width, includeRoot = true) {
        
        if (typeof cols !== 'number' || cols <= 0) {
            return;
        }
        if (typeof width !== 'number' || width <= 0) {
            return;
        }

        let grid, manNode;
        
        if (includeRoot) {
            grid = {
                'w:tblGrid': {
                    "w:gridCol": []
                }
            }
            manNode = grid['w:tblGrid']['w:gridCol'];
        } else {
            grid = {
                "w:gridCol": []
            };
            manNode = grid['w:gridCol'];
        }

        for (let i = 0; i < cols; i++) {
            manNode.push({
                $: {
                    "w:w": Math.floor(width / cols)
                }
            });
        }
        
        return grid;
    };
    
    /**
     * Builds the tbl row obj with root
     */
    TableProvider.prototype.buildTblRow = function() {
        return {
            'w:trPr': null,
            'w:tblPrEx': null,
            'w:tc': null
        }
    };

    /**
     * Build the jc object
     * @param {string} val - an enum to insert into the property
     * @param {boolean} includeRoot - whetherto include the root node or not
     * @return {object} - the jc object
     */
    TableProvider.prototype.buildJc = function(val, includeRoot = true) {

        if (typeof val !== 'string') {
            return;
        }

        let jc;
        let align = val.match(this.tblAlignVal);

        if (!align) align = 'start';

        if (includeRoot) {
            jc = {
                'w:jc': {
                    $: {
                        'w:val': align
                    }
                }
            }
        } else {
            jc = {
                $: {
                    'w:val': align
                }
            };
        }

        return jc;
    };

    /**
     * build the base tblBorders obj
     * @param {boolean} includeRoot - whether to include the root node or not
     * @returns {object} - the tblBorder object
     */
    TableProvider.prototype.buildTblPrBorders = function(includeRoot = true) {

        let borders;

        if (includeRoot) {
            borders = {
                'w:tblBorders': {
                    'w:top': null,
                    'w:start': null,
                    'w:bottom': null,
                    'w:end': null,
                    'w:insideH': null,
                    'w:insideV': null
                }
            };
        } else {
            borders = {
                'w:top': null,
                'w:start': null,
                'w:bottom': null,
                'w:end': null,
                'w:insideH': null,
                'w:insideV': null
            };
        }

        return borders;
    };

    /**
     * builds the border attribute for table property and table cell property
     * @param {string} val - an attribute from a list
     * @param {string} color - an RRGGBB color string
     * @param {number} sz - the width of the border
     * @param {number} space - the space between borders
     * @returns {object} - the border attributes property object
     */
    TableProvider.prototype.buildTblPrBordersAttr = function(val, color = '000000', sz = 2, space = 0) {
        
        if (typeof color !== 'string' || !/[0-9a-fA-F]{6}/.test(color)) {
            return;
        }
        if (typeof sz !== 'number' || sz < 2) {
            return;
        }
        if (typeof space !== 'number' || space < 0) {
            return;
        }

        if (this.tblBorderVal.test(val)) {
            return {
                $: {
                    'w:color': color,
                    'w:space': space,
                    'w:sz': sz,
                    'w:val': val
                }
            }
        }
        
        return {
            $: {
                'w:color': color,
                'w:space': space,
                'w:sz': sz,
                'w:val': 'single'
            }
        }
    }

    /**
     * builds the tbl margin object
     * @param {boolean} includeRoot - whether or not to include the root node or not
     * @returns {object} - returns the tblCellMar object
     */
    TableProvider.prototype.buildTblPrCellMar = function(includeRoot = false) {

        if (includeRoot) {
            return {
                'w:tblCellMar': {
                    'w:top': null,
                    'w:start': null,
                    'w:end': null,
                    'w:bottom': null
                }
            }
        } else {
            return {
                'w:top': null,
                'w:start': null,
                'w:end': null,
                'w:bottom': null
            };
        }
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

        return {
            $: {
                'w:w': width,
                'w:type': 'dxa'
            }
        }
    }

    TableProvider.prototype.buildTblRowPr = function(includeRoot = true) {
        // make rule when cleaning the table object to excempt tblHeader and hidden to be wiped
        // when they are null (if  they are ANY val, just null it and use, BUT if null wipe)
        if (includeRoot) {
            return {
                'w:trPr': {
                    'w:jc': null,
                    'w:tblHeader': null,
                    'w:trHeight': null,
                    'w:hidden': null
                }
            };
        } else {
            return {
                'w:jc': null,
                'w:tblHeader': null,
                'w:trHeight': null,
                'w:hidden': null
            };
        }
    };

    TableProvider.prototype.buildTrHeight = function(rule, val, includeRoot = true) {

        if (typeof rule !== 'string') {
            return;
        }
        if (typeof val !== 'number' || val < 0) {
            return;
        }

        if (!rule.match(this.tblRowHeightRules)) rule = 'auto';

        if (includeRoot) {
            return {
                'w:trHeight': {
                    $: {
                        'w:hRule': rule,
                        'w:val': val
                    }
                }
            }
        } else {
            return {
                $: {
                    'w:hRule': rule,
                    'w:val': val
                }
            }
        }
    }

    TableProvider.prototype.buildTblRowCell = function() {

    };
    
    return TableProvider;
})();

module.exports = TableProvider;