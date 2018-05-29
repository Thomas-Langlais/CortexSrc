const expect = require('chai').expect;
const assert = require('chai').assert;
const builder = new (require('xml2js').Builder)({
    renderOpts: {
        pretty: false,
        indent: '',
        newline: ''
    },
    headless: true
});
const tblProvider = new (require('../../../src/generators/providers/DocxProvider').TableProvider);
const pProvider = new(require('../../../src/generators/providers/DocxProvider').ParagraphProvider);

module.exports = function() {
    // describe('TableProvider', function() {
    //     // buildTbl tests
    //     describe('#buildTbl()', function() {
    //         it('should build a tbl with root obj', function(done) {
    //             let tbl = tblProvider.buildTbl();
    //             let expected = {
    //                 'w:tbl': {
    //                     'w:tblPr': null,
    //                     'w:tblGrid': null,
    //                     'w:tr': []
    //                 }
    //             };
    
    //             expect(tbl).to.deep.equals(expected);
    //             expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build a tbl without root obj (includeRoot = false)', function(done) {
    //             let tbl = tblProvider.buildTbl(false);
    //             let expected = {
    //                 'w:tblPr': null,
    //                 'w:tblGrid': null,
    //                 'w:tr': []
    //             };
    
    //             expect(tbl).to.deep.equals(expected);
    //             expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

    //             done();
    //         });
    //     });

    //     //buildBaseTblPr tests
    //     describe('#buildBaseTblPr()', function() {
    //         it('should build a tblPr with root obj', function(done) {
    //             let tbl = tblProvider.buildTblPr();
    //             let expected = {
    //                 'w:tblPr': {
    //                     'w:js': null,
    //                     'w:shd': null,
    //                     'w:tblBorders': null,
    //                     'w:tblCaption': null,
    //                     'w:tblCellMar': null,
    //                     'w:tblCellSpacing': null,
    //                     'w:tblInd': null,
    //                     'w:tblLayout': null,
    //                     'w:tblLook': null,
    //                     'w:tblOverlay': null,
    //                     'w:tblpPr': null,
    //                     'w:tblStyle': null,
    //                     'w:tblStyleColBandSize': null,
    //                     'w:tblStyleRowBandSize': null,
    //                     'w:tblW': null
    //                 }
    //             };
    
    //             expect(tbl).to.deep.equals(expected);
    //             expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build a tblPr without root obj (includeRoot = false)', function(done) {
    //             let tbl = tblProvider.buildTblPr(false);
    //             let expected = {
    //                 'w:js': null,
    //                 'w:shd': null,
    //                 'w:tblBorders': null,
    //                 'w:tblCaption': null,
    //                 'w:tblCellMar': null,
    //                 'w:tblCellSpacing': null,
    //                 'w:tblInd': null,
    //                 'w:tblLayout': null,
    //                 'w:tblLook': null,
    //                 'w:tblOverlay': null,
    //                 'w:tblpPr': null,
    //                 'w:tblStyle': null,
    //                 'w:tblStyleColBandSize': null,
    //                 'w:tblStyleRowBandSize': null,
    //                 'w:tblW': null
    //             };
    
    //             expect(tbl).to.deep.equals(expected);
    //             expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

    //             done();
    //         });
    //     });

    //     //buildTblGrid tests
    //     describe('#buildTblGrid()', function() {
            
    //         it('should build a tblGrid with root obj', function(done) {
    //             let cols = 3, width = 10000;
                
    //             let tbl = tblProvider.buildTblGrid(cols, width);
    //             if (!tbl) {
    //                 done("didn't build");
    //                 return;
    //             }
    //             let expected = {
    //                 'w:tblGrid': {
    //                     "w:gridCol": [
    //                         {
    //                             $: {
    //                                 "w:w": 3333
    //                             }
    //                         },
    //                         {
    //                             $: {
    //                                 "w:w": 3333
    //                             }
    //                         },
    //                         {
    //                             $: {
    //                                 "w:w": 3333
    //                             }
    //                         },
    //                     ]
    //                 }
    //             };
    
    //             expect(tbl).to.deep.equals(expected);
    //             expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build a tblGrid without root obj (includeRoot = false)', function(done) {

    //             let cols = 3, width = 10000;

    //             let tbl = tblProvider.buildTblGrid(cols, width, false);
    //             if (!tbl) {
    //                 done("didn't build");
    //                 return;
    //             } 
    //             let expected = {
    //                 "w:gridCol": [
    //                     {
    //                         $: {
    //                             "w:w": 3333
    //                         }
    //                     },
    //                     {
    //                         $: {
    //                             "w:w": 3333
    //                         }
    //                     },
    //                     {
    //                         $: {
    //                             "w:w": 3333
    //                         }
    //                     },
    //                 ]
    //             };
    
    //             expect(tbl).to.deep.equals(expected);
    //             expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should not build the tblGrid with 0 cols', function(done) {
    //             let cols = 0, width = 10000;

    //             let tbl = tblProvider.buildTblGrid(cols, width);
    //             if (!tbl) {
    //                 done();
    //                 return;
    //             }
    //         });

    //         it('should not build the tblGrid with -1 cols', function(done) {
    //             let cols = -1, width = 10000;

    //             let tbl = tblProvider.buildTblGrid(cols, width);
    //             if (!tbl) {
    //                 done();
    //             }
    //         });

    //         it('should not build the tblGrid with 0 width', function(done) {
    //             let cols = 1, width = 0;

    //             let tbl = tblProvider.buildTblGrid(cols, width);
    //             if (!tbl) {
    //                 done();
    //             }
    //         });

    //         it('should not build the tblGrid with -1 width', function(done) {
    //             let cols = 1, width = -1;

    //             let tbl = tblProvider.buildTblGrid(cols, width);
    //             if (!tbl) {
    //                 done();
    //             }
    //         });

    //         it('should not build the tblGrid with string cols', function(done) {
    //             let cols = '', width = 10000;

    //             let tbl = tblProvider.buildTblGrid(cols, width);
    //             if (!tbl) {
    //                 done();
    //             }
    //         });

    //         it('should not build the tblGrid with string width', function(done) {
    //             let cols = 1, width = '';

    //             let tbl = tblProvider.buildTblGrid(cols, width);
    //             if (!tbl) {
    //                 done();
    //             }
    //         });
    //     });

    //     //buildTblRow tests
    //     describe('#buildTblRow()', function() {
    //         it('should build a tr', function(done) {
    //             let tbl = tblProvider.buildTblRow();
    //             let expected = {
    //                 'w:trPr': null,
    //                 'w:tblPrEx': null,
    //                 'w:tc': null
    //             };
    
    //             expect(tbl).to.deep.equals(expected);
    //             expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

    //             done();
    //         });
    //     });

    //     //buildTblPrJc tests
    //     describe('#buildJc()', function() {
    //         it('should build an alignment obj with root node', function(done) {
    //             let val = 'start';
                
    //             let jc = tblProvider.buildJc(val);

    //             if (!jc) {
    //                 done("didn't build");
    //                 return;
    //             }

    //             let expected = {
    //                 'w:jc': {
    //                     $: {
    //                         'w:val': 'start'
    //                     }
    //                 }
    //             };

    //             expect(jc).to.deep.equals(expected);
    //             expect(builder.buildObject(jc)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build an alignment obj without root node (includeRoot = false)', function(done) {
    //             let val = 'start';
                
    //             let jc = tblProvider.buildJc(val, false);

    //             if (!jc) {
    //                 done("didn't build");
    //                 return;
    //             }

    //             let expected = {
    //                 $: {
    //                     'w:val': 'start'
    //                 }
    //             };

    //             expect(jc).to.deep.equals(expected);
    //             expect(builder.buildObject(jc)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build an alignment obj from unknown value', function(done) {
    //             let val = 'idk';
                
    //             let jc = tblProvider.buildJc(val, false);

    //             if (!jc) {
    //                 done("didn't build");
    //                 return;
    //             }

    //             let expected = {
    //                 $: {
    //                     'w:val': 'start'
    //                 }
    //             };

    //             expect(jc).to.deep.equals(expected);
    //             expect(builder.buildObject(jc)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should fail when not string val', function(done) {
    //             let val = 0;
                
    //             let jc = tblProvider.buildJc(val, false);
    //             if (!jc) {
    //                 done();
    //             }
    //         });
    //     });

    //     //buildTblBorders tests
    //     describe('#buildTblBorders()', function() {

    //         it('should build the tblBorder obj with root node', function(done) {
    //             let borders = tblProvider.buildTblBorders();
    //             let expected = {
    //                 'w:tblBorders': {
    //                     'w:top': null,
    //                     'w:start': null,
    //                     'w:bottom': null,
    //                     'w:end': null,
    //                     'w:insideH': null,
    //                     'w:insideV': null
    //                 }
    //             };

    //             expect(borders).to.deep.equals(expected);
    //             expect(builder.buildObject(borders)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tblBorder obj without root node', function(done) {
    //             let borders = tblProvider.buildTblBorders(false);
    //             let expected = {
    //                 'w:top': null,
    //                 'w:start': null,
    //                 'w:bottom': null,
    //                 'w:end': null,
    //                 'w:insideH': null,
    //                 'w:insideV': null
    //             };

    //             expect(borders).to.deep.equals(expected);
    //             expect(builder.buildObject(borders)).equals(builder.buildObject(expected));

    //             done();
    //         });
    //     });

    //     //buildTblBordersAttr tests
    //     describe('#buildTblBordersAttr()', function() {
    //         it('should build the tblBorder attributes', function(done) {
    //             let val = 'single', color = 'ffffff', sz = 3, space = 0;
    //             expected = {
    //                 $: {
    //                     'w:color': 'ffffff',
    //                     'w:space': 0,
    //                     'w:sz': 3,
    //                     'w:val': 'single'
    //                 }
    //             }
    //             let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
    //             if (!attrs) {
    //                 done('the object didnt build');
    //                 return;
    //             }

    //             expect(attrs).to.deep.equals(expected);
    //             expect(builder.buildObject(attrs)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tblBorder attributes with unknown val defaulted', function(done) {
    //             let val = 'idk', color = 'ffffff', sz = 3, space = 0;
    //             let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
    //             let expected = {
    //                 $: {
    //                     'w:color': color,
    //                     'w:space': space,
    //                     'w:sz': sz,
    //                     'w:val': 'single'
    //                 }
    //             }
                
    //             expect(attrs).to.deep.equals(expected);
    //             expect(builder.buildObject(attrs)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should not build the tblBorder attributes (color = fffff)', function(done) {
    //             let val = 'single', color = 'fffff', sz = 3, space = 0;
    //             let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
    //             if (!attrs) {
    //                 done();
    //             } else {
    //                 done('should have failed');
    //             }
    //         });

    //         it('should not build the tblBorder attributes (color = ffpfff)', function(done) {
    //             let val = 'single', color = 'ffpfff', sz = 3, space = 0;
    //             let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
    //             if (!attrs) {
    //                 done();
    //             } else {
    //                 done('should have failed');
    //             }
    //         });

    //         it('should not build the tblBorder attributes (sz = 1)', function(done) {
    //             let val = 'single', color = 'ffffff', sz = 1, space = 0;
    //             let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
    //             if (!attrs) {
    //                 done();
    //             } else {
    //                 done('should have failed');
    //             }
    //         });

    //         it('should not build the tblBorder attributes (space = -1)', function(done) {
    //             let val = 'single', color = 'ffffff', sz = 3, space = -1;
    //             let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
    //             if (!attrs) {
    //                 done();
    //             } else {
    //                 done('should have failed');
    //             }
    //         });

    //         it('should not build the tblBorder attributes (color is number)', function(done) {
    //             let val = 'single', color = 001010, sz = 3, space = 0;
    //             let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
    //             if (!attrs) {
    //                 done();
    //             } else {
    //                 done('should have failed');
    //             }
    //         });

    //         it('should not build the tblBorder attributes (sz is string)', function(done) {
    //             let val = 'single', color = 'ffffff', sz = 'aa', space = 0;
    //             let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
    //             if (!attrs) {
    //                 done();
    //             } else {
    //                 done('should have failed');
    //             }
    //         });

    //         it('should not build the tblBorder attributes (space is string)', function(done) {
    //             let val = 'single', color = 'ffffff', sz = 3, space = 'ss';
    //             let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
    //             if (!attrs) {
    //                 done();
    //             } else {
    //                 done('should have failed');
    //             }
    //         });
    //     });

    //     //buildTblPrCellMar tests
    //     describe('#buildTblPrCellMar()', function() {

    //         it('should build the tbl cell margin with parent node', function(done) {

    //             let cellMar = tblProvider.buildTblPrCellMar();
    //             let expected = {
    //                 'w:tblCellMar': {
    //                     'w:top': null,
    //                     'w:start': null,
    //                     'w:end': null,
    //                     'w:bottom': null
    //                 }
    //             };
                
    //             expect(cellMar).to.deep.equals(expected);
    //             expect(builder.buildObject(cellMar)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tbl cell margin without parent node', function(done) {
    //             let cellMar = tblProvider.buildTblPrCellMar(false);
    //             let expected = {
    //                 'w:top': null,
    //                 'w:start': null,
    //                 'w:end': null,
    //                 'w:bottom': null
    //             };
                
    //             expect(cellMar).to.deep.equals(expected);
    //             expect(builder.buildObject(cellMar)).equals(builder.buildObject(expected));

    //             done();
    //         });
    //     });

    //     //buildTblPrMarAttr tests
    //     describe('#buildTblPrMarAttr()', function() {

    //         it('should build the tblMar attribute', function(done) {
    //             let width = 0;
    //             let attribute = tblProvider.buildTblPrMarAttr(width);
    //             if (!attribute) {
    //                 done('It should have built the attribute object');
    //                 return;
    //             }
    //             let expected = {
    //                 $: {
    //                     'w:w': 0,
    //                     'w:type': 'dxa'
    //                 }
    //             };

    //             expect(attribute).to.deep.equals(expected);
    //             expect(builder.buildObject(attribute)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should not build the tblMar attribute (width < 0)', function(done) {
    //             let width = -1;
    //             let attribute = tblProvider.buildTblPrMarAttr(width);
    //             if (!attribute) {
    //                 done();
    //             } else {
    //                 done('It should have built the attribute object');
    //             }
    //         });

    //         it('should not build the tblMar attribute (width is string)', function(done) {
    //             let width = 'ssss';
    //             let attribute = tblProvider.buildTblPrMarAttr(width);
    //             if (!attribute) {
    //                 done();
    //             } else {
    //                 done('It should have built the attribute object');
    //             }
    //         });
    //     });

    //     //buildTblRowPr tests
    //     describe('#buildTblRowPr()', function() {
            
    //         it('should build the trPr object with parent node', function(done) {

    //             let trPr = tblProvider.buildTblRowPr();
    //             let expected = {
    //                 'w:trPr': {
    //                     'w:jc': null,
    //                     'w:tblHeader': null,
    //                     'w:trHeight': null,
    //                     'w:hidden': null
    //                 }
    //             };

    //             expect(trPr).to.deep.equals(expected);
    //             expect(builder.buildObject(trPr)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the trPr object without parent node', function(done) {

    //             let trPr = tblProvider.buildTblRowPr(false);
    //             let expected = {
    //                 'w:jc': null,
    //                 'w:tblHeader': null,
    //                 'w:trHeight': null,
    //                 'w:hidden': null
    //             };

    //             expect(trPr).to.deep.equals(expected);
    //             expect(builder.buildObject(trPr)).equals(builder.buildObject(expected));

    //             done();
    //         });
    //     });

    //     //buildTrHeight tests
    //     describe('#buildTrHeight()', function() {

    //         it('should build the trHeight object with parent node', function(done) {
    //             let rule = 'atLeast', val = 0;
    //             let trHeight = tblProvider.buildTrHeight(rule, val);
    //             let expected = {
    //                 'w:trHeight': {
    //                     $: {
    //                         'w:hRule': rule,
    //                         'w:val': val
    //                     }
    //                 }
    //             };

    //             expect(trHeight).to.deep.equals(expected);
    //             expect(builder.buildObject(trHeight)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the trHeight object without parent node', function(done) {
    //             let rule = 'atLeast', val = 0;
    //             let trHeight = tblProvider.buildTrHeight(rule, val, false);
    //             let expected = {
    //                 $: {
    //                     'w:hRule': rule,
    //                     'w:val': val
    //                 }
    //             };

    //             expect(trHeight).to.deep.equals(expected);
    //             expect(builder.buildObject(trHeight)).equals(builder.buildObject(expected));

    //             done();
    //         });
            
    //         it('should build the trHeight object (rule = exact)', function(done) {
    //             let rule = 'exact', val = 0;
    //             let trHeight = tblProvider.buildTrHeight(rule, val);
    //             let expected = {
    //                 'w:trHeight': {
    //                     $: {
    //                         'w:hRule': rule,
    //                         'w:val': val
    //                     }
    //                 }
    //             };

    //             expect(trHeight).to.deep.equals(expected);
    //             expect(builder.buildObject(trHeight)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the trHeight object (rule = auto)', function(done) {
    //             let rule = 'auto', val = 0;
    //             let trHeight = tblProvider.buildTrHeight(rule, val);
    //             let expected = {
    //                 'w:trHeight': {
    //                     $: {
    //                         'w:hRule': rule,
    //                         'w:val': val
    //                     }
    //                 }
    //             };

    //             expect(trHeight).to.deep.equals(expected);
    //             expect(builder.buildObject(trHeight)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the trHeight object with rule defaulted from unknown rule', function(done) {
    //             let rule = 'idk', val = 0;
    //             let trHeight = tblProvider.buildTrHeight(rule, val);
    //             let expected = {
    //                 'w:trHeight': {
    //                     $: {
    //                         'w:hRule': 'auto',
    //                         'w:val': val
    //                     }
    //                 }
    //             };

    //             expect(trHeight).to.deep.equals(expected);
    //             expect(builder.buildObject(trHeight)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should not build the trHeight object (val < 0)', function(done) {
    //             let rule = 'exact', val = -1;
    //             let trHeight = tblProvider.buildTrHeight(rule, val);
    //             if (!trHeight) {
    //                 done();
    //             } else {
    //                 done('It should have not built the object');
    //             }
    //         });
    //     });

    //     //buildTblRowCell tests
    //     describe('#buildTblRowCell()', function() {

    //         it('should build the tc object with the parent node', function(done) {
    //             let tc = tblProvider.buildTblRowCell();
    //             let expected = {
    //                 'w:tc': {
    //                     'w:tcPr': null,
    //                     'w:p': null,
    //                     'w:tbl': null
    //                 }
    //             };

    //             expect(tc).to.deep.equals(expected);
    //             expect(builder.buildObject(tc)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tc object without the parent node', function(done) {
    //             let tc = tblProvider.buildTblRowCell(false);
    //             let expected = {
    //                 'w:tcPr': null,
    //                 'w:p': null,
    //                 'w:tbl': null
    //             };

    //             expect(tc).to.deep.equals(expected);
    //             expect(builder.buildObject(tc)).equals(builder.buildObject(expected));

    //             done();
    //         });
    //     });

    //     //buildTblRowCellPr tests
    //     describe('#buildTblRowCellPr()', function() {
            
    //         it('should build the tcPr object with the parent node', function(done) {
    //             let tcPr = tblProvider.buildTblRowCellPr();
    //             let expected = {
    //                 'w:tcPr': {
    //                     'w:gridSpan': null,
    //                     'w:noWrap': null,
    //                     'w:tcBorders': null,
    //                     'w:tcMar': null,
    //                     'w:tcW': null,
    //                     'w:vAlign': null
    //                 }
    //             };

    //             expect(tcPr).to.deep.equals(expected);
    //             expect(builder.buildObject(tcPr)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tcPr object without the parent node', function(done) {
    //             let tcPr = tblProvider.buildTblRowCellPr(false);
    //             let expected = {
    //                 'w:gridSpan': null,
    //                 'w:noWrap': null,
    //                 'w:tcBorders': null,
    //                 'w:tcMar': null,
    //                 'w:tcW': null,
    //                 'w:vAlign': null
    //             };

    //             expect(tcPr).to.deep.equals(expected);
    //             expect(builder.buildObject(tcPr)).equals(builder.buildObject(expected));

    //             done();
    //         });
    //     });

    //     //buildTblRowCellBorders tests
    //     describe('#buildTblRowCellBorders()', function() {
            
    //         it('should build the tcBorders object with the parent node', function(done) {
    //             let tcPr = tblProvider.buildTblRowCellBorders();
    //             let expected = {
    //                 'w:tcBorders': {
    //                     'w:top': null,
    //                     'w:start': null,
    //                     'w:bottom': null,
    //                     'w:end': null,
    //                     'w:insideH': null,
    //                     'w:insideV': null,
    //                     'w:tl2br': null,
    //                     'w:tr2bl': null
    //                 }
    //             };

    //             expect(tcPr).to.deep.equals(expected);
    //             expect(builder.buildObject(tcPr)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tcBorders object without the parent node', function(done) {
    //             let tcPr = tblProvider.buildTblRowCellBorders(false);
    //             let expected = {
    //                 'w:top': null,
    //                 'w:start': null,
    //                 'w:bottom': null,
    //                 'w:end': null,
    //                 'w:insideH': null,
    //                 'w:insideV': null,
    //                 'w:tl2br': null,
    //                 'w:tr2bl': null
    //             };

    //             expect(tcPr).to.deep.equals(expected);
    //             expect(builder.buildObject(tcPr)).equals(builder.buildObject(expected));

    //             done();
    //         });
    //     });

    //     //buildTcW tests
    //     describe('#buildTcW()', function() {

    //         it('should build the tcW object with parent node', function(done) {

    //             let width = 0, type = 'auto'
    //             let tcPr = tblProvider.buildTcW(width, type);
    //             let expected = {
    //                 'w:tcW': {
    //                     $: {
    //                         'w:w': width,
    //                         'w:type': type
    //                     }
    //                 }
    //             };

    //             expect(tcPr).to.deep.equals(expected);
    //             expect(builder.buildObject(tcPr)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tcW object without parent node', function(done) {

    //             let width = 0, type = 'auto'
    //             let tcPr = tblProvider.buildTcW(width, type, false);
    //             let expected = {
    //                 $: {
    //                     'w:w': width,
    //                     'w:type': type
    //                 }
    //             };

    //             expect(tcPr).to.deep.equals(expected);
    //             expect(builder.buildObject(tcPr)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tcW object (type = dxa)', function(done) {
    //             let width = 0, type = 'dxa'
    //             let tcPr = tblProvider.buildTcW(width, type, false);
    //             let expected = {
    //                 $: {
    //                     'w:w': width,
    //                     'w:type': type
    //                 }
    //             };

    //             expect(tcPr).to.deep.equals(expected);
    //             expect(builder.buildObject(tcPr)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tcW object (type = nil)', function(done) {
    //             let width = 0, type = 'nil'
    //             let tcPr = tblProvider.buildTcW(width, type, false);
    //             let expected = {
    //                 $: {
    //                     'w:w': width,
    //                     'w:type': type
    //                 }
    //             };

    //             expect(tcPr).to.deep.equals(expected);
    //             expect(builder.buildObject(tcPr)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tcW object (type = pct)', function(done) {
    //             let width = 0, type = 'pct'
    //             let tcPr = tblProvider.buildTcW(width, type, false);
    //             let expected = {
    //                 $: {
    //                     'w:w': width,
    //                     'w:type': type
    //                 }
    //             };

    //             expect(tcPr).to.deep.equals(expected);
    //             expect(builder.buildObject(tcPr)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build the tcW object with defaulted val from unknown type', function(done) {
    //             let width = 0, type = 'idk'
    //             let tcPr = tblProvider.buildTcW(width, type, false);
    //             let expected = {
    //                 $: {
    //                     'w:w': width,
    //                     'w:type': 'auto'
    //                 }
    //             };

    //             expect(tcPr).to.deep.equals(expected);
    //             expect(builder.buildObject(tcPr)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should not build the tcW object (width < 0)', function(done) {

    //             let width = -1, type = 'auto';
    //             let tcW = tblProvider.buildTcW(width, type);
    //             if (!tcW) {
    //                 done();
    //             } else {
    //                 done('It should have failed');
    //             }
    //         });

    //         it('should not build the tcW object (width isnt a number)', function(done) {

    //             let width = 'aa', type = 'auto';
    //             let tcW = tblProvider.buildTcW(width, type);
    //             if (!tcW) {
    //                 done();
    //             } else {
    //                 done('It should have failed');
    //             }
    //         })
    //     });

    //     //buildTblRowCellVAlign tests
    //     describe('#buildTblRowCellVAlign()', function() {

    //         it('should build a vAlign object with parent node', function(done) {

    //             let val = 'bottom';
    //             let vAlign = tblProvider.buildTblRowCellVAlign(val);
    //             let expected = {
    //                 'w:vAlign': {
    //                     $: {
    //                         'w:val': val
    //                     }
    //                 }
    //             };

    //             expect(vAlign).to.deep.equals(expected);
    //             expect(builder.buildObject(vAlign)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build a vAlign object without parent node', function(done) {

    //             let val = 'bottom';
    //             let vAlign = tblProvider.buildTblRowCellVAlign(val, false);
    //             let expected = {
    //                 $: {
    //                     'w:val': val
    //                 }
    //             };

    //             expect(vAlign).to.deep.equals(expected);
    //             expect(builder.buildObject(vAlign)).equals(builder.buildObject(expected));

    //             done();
    //         });
            
    //         it('should build a vAlign object (val = center)', function(done) {

    //             let val = 'center';
    //             let vAlign = tblProvider.buildTblRowCellVAlign(val);
    //             let expected = {
    //                 'w:vAlign': {
    //                     $: {
    //                         'w:val': val
    //                     }
    //                 }
    //             };

    //             expect(vAlign).to.deep.equals(expected);
    //             expect(builder.buildObject(vAlign)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build a vAlign object (val = top)', function(done) {

    //             let val = 'top';
    //             let vAlign = tblProvider.buildTblRowCellVAlign(val);
    //             let expected = {
    //                 'w:vAlign': {
    //                     $: {
    //                         'w:val': val
    //                     }
    //                 }
    //             };

    //             expect(vAlign).to.deep.equals(expected);
    //             expect(builder.buildObject(vAlign)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should build a vAlign object defaulted val from unknown', function(done) {

    //             let val = 'idk';
    //             let vAlign = tblProvider.buildTblRowCellVAlign(val);
    //             let expected = {
    //                 'w:vAlign': {
    //                     $: {
    //                         'w:val': 'top'
    //                     }
    //                 }
    //             };

    //             expect(vAlign).to.deep.equals(expected);
    //             expect(builder.buildObject(vAlign)).equals(builder.buildObject(expected));

    //             done();
    //         });

    //         it('should not build a vAlign object (val is number)', function(done) {

    //             let val = 1;
    //             let vAlign = tblProvider.buildTblRowCellVAlign(val);
    //             if (!vAlign) {
    //                 done();
    //             } else {
    //                 done('it should have failed to build');
    //             }
    //         });
    //     });
    // });

    // describe('ParagraphProvider', function() {

    // });
};