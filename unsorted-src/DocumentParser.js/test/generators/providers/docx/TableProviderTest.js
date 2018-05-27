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
const tblProvider = new (require('../../../../src/generators/providers/docx/TableProvider'));

module.exports = function() {
    describe('TableProvider', function() {
        // buildTbl tests
        describe('#buildTbl()', function() {
            it('should build a tbl with root obj', function(done) {
                let tbl = tblProvider.buildTbl();
                let expected = {
                    'w:tbl': {
                        'w:tblPr': null,
                        'w:tblGrid': null,
                        'w:tr': []
                    }
                };
    
                expect(tbl).to.deep.equals(expected);
                expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

                done();
            });

            it('should build a tbl without root obj (includeRoot = false)', function(done) {
                let tbl = tblProvider.buildTbl(false);
                let expected = {
                    'w:tblPr': null,
                    'w:tblGrid': null,
                    'w:tr': []
                };
    
                expect(tbl).to.deep.equals(expected);
                expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

                done();
            });
        });

        //buildBaseTblPr tests
        describe('#buildBaseTblPr()', function() {
            it('should build a tblPr with root obj', function(done) {
                let tbl = tblProvider.buildTblPr();
                let expected = {
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
    
                expect(tbl).to.deep.equals(expected);
                expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

                done();
            });

            it('should build a tblPr without root obj (includeRoot = false)', function(done) {
                let tbl = tblProvider.buildTblPr(false);
                let expected = {
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
    
                expect(tbl).to.deep.equals(expected);
                expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

                done();
            });
        });

        //buildTblGrid tests
        describe('#buildTblGrid()', function() {
            
            it('should build a tblGrid with root obj', function(done) {
                let cols = 3, width = 10000;
                
                let tbl = tblProvider.buildTblGrid(cols, width);
                if (!tbl) {
                    done("didn't build");
                    return;
                }
                let expected = {
                    'w:tblGrid': {
                        "w:gridCol": [
                            {
                                $: {
                                    "w:w": 3333
                                }
                            },
                            {
                                $: {
                                    "w:w": 3333
                                }
                            },
                            {
                                $: {
                                    "w:w": 3333
                                }
                            },
                        ]
                    }
                };
    
                expect(tbl).to.deep.equals(expected);
                expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

                done();
            });

            it('should build a tblGrid without root obj (includeRoot = false)', function(done) {

                let cols = 3, width = 10000;

                let tbl = tblProvider.buildTblGrid(cols, width, false);
                if (!tbl) {
                    done("didn't build");
                    return;
                } 
                let expected = {
                    "w:gridCol": [
                        {
                            $: {
                                "w:w": 3333
                            }
                        },
                        {
                            $: {
                                "w:w": 3333
                            }
                        },
                        {
                            $: {
                                "w:w": 3333
                            }
                        },
                    ]
                };
    
                expect(tbl).to.deep.equals(expected);
                expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

                done();
            });

            it('should not build the tblGrid with 0 cols', function(done) {
                let cols = 0, width = 10000;

                let tbl = tblProvider.buildTblGrid(cols, width);
                if (!tbl) {
                    done();
                    return;
                }
            });

            it('should not build the tblGrid with -1 cols', function(done) {
                let cols = -1, width = 10000;

                let tbl = tblProvider.buildTblGrid(cols, width);
                if (!tbl) {
                    done();
                }
            });

            it('should not build the tblGrid with 0 width', function(done) {
                let cols = 1, width = 0;

                let tbl = tblProvider.buildTblGrid(cols, width);
                if (!tbl) {
                    done();
                }
            });

            it('should not build the tblGrid with -1 width', function(done) {
                let cols = 1, width = -1;

                let tbl = tblProvider.buildTblGrid(cols, width);
                if (!tbl) {
                    done();
                }
            });

            it('should not build the tblGrid with string cols', function(done) {
                let cols = '', width = 10000;

                let tbl = tblProvider.buildTblGrid(cols, width);
                if (!tbl) {
                    done();
                }
            });

            it('should not build the tblGrid with string width', function(done) {
                let cols = 1, width = '';

                let tbl = tblProvider.buildTblGrid(cols, width);
                if (!tbl) {
                    done();
                }
            });
        });

        //buildTblRow tests
        describe('#buildTblRow()', function() {
            it('should build a tr', function(done) {
                let tbl = tblProvider.buildTblRow();
                let expected = {
                    'w:trPr': null,
                    'w:tblPrEx': null,
                    'w:tc': null
                };
    
                expect(tbl).to.deep.equals(expected);
                expect(builder.buildObject(tbl)).equals(builder.buildObject(expected));

                done();
            });
        });

        //buildTblPrJc tests
        describe('#buildTblPrJc()', function() {
            it('should build an alignment obj with root node', function(done) {
                let val = 'start';
                
                let jc = tblProvider.buildTblPrJc(val);

                if (!jc) {
                    done("didn't build");
                    return;
                }

                let expected = {
                    'w:jc': {
                        $: {
                            'w:val': 'start'
                        }
                    }
                };

                expect(jc).to.deep.equals(expected);
                expect(builder.buildObject(jc)).equals(builder.buildObject(expected));

                done();
            });

            it('should build an alignment obj without root node (includeRoot = false)', function(done) {
                let val = 'start';
                
                let jc = tblProvider.buildTblPrJc(val, false);

                if (!jc) {
                    done("didn't build");
                    return;
                }

                let expected = {
                    $: {
                        'w:val': 'start'
                    }
                };

                expect(jc).to.deep.equals(expected);
                expect(builder.buildObject(jc)).equals(builder.buildObject(expected));

                done();
            });

            it('should build an alignment obj from unknown value', function(done) {
                let val = 'idk';
                
                let jc = tblProvider.buildTblPrJc(val, false);

                if (!jc) {
                    done("didn't build");
                    return;
                }

                let expected = {
                    $: {
                        'w:val': 'start'
                    }
                };

                expect(jc).to.deep.equals(expected);
                expect(builder.buildObject(jc)).equals(builder.buildObject(expected));

                done();
            });

            it('should fail when not string val', function(done) {
                let val = 0;
                
                let jc = tblProvider.buildTblPrJc(val, false);
                if (!jc) {
                    done();
                }
            });
        });

        //buildTblBorders tests
        describe('#buildTblBorders()', function() {

            it('should build the tblBorder obj with root node', function(done) {
                let borders = tblProvider.buildTblBorders();
                expected = {
                    'w:tblBorders': {
                        'w:top': null,
                        'w:start': null,
                        'w:bottom': null,
                        'w:end': null,
                        'w:insideH': null,
                        'w:insideV': null
                    }
                };

                expect(borders).to.deep.equals(expected);
                expect(builder.buildObject(borders)).equals(builder.buildObject(expected));

                done();
            });

            it('should build the tblBorder obj without root node', function(done) {
                let borders = tblProvider.buildTblBorders(false);
                expected = {
                    'w:top': null,
                    'w:start': null,
                    'w:bottom': null,
                    'w:end': null,
                    'w:insideH': null,
                    'w:insideV': null
                };

                expect(borders).to.deep.equals(expected);
                expect(builder.buildObject(borders)).equals(builder.buildObject(expected));

                done();
            });
        });

        //buildTblBordersAttr tests
        describe('#buildTblBordersAttr()', function() {
            it('should build the tblBorder attributes', function(done) {
                let val = 'single', color = 'ffffff', sz = 3, space = 0;
                expected = {
                    $: {
                        'w:val': 'single',
                        'w:color': 'ffffff',
                        'w:sz': 3,
                        'w:space': 0
                    }
                }
                let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                if (!attrs) {
                    done('the object didnt build');
                    return;
                }

                expect(attrs).to.deep.equals(expected);
                expect(builder.buildObject(attrs)).equals(builder.buildObject(expected));

                done();
            });

            it('should build the tblBorder attributes with unknown val defaulted', function(done) {
                let val = 'idk', color = 'ffffff', sz = 3, space = 0;
                let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
                if (!attrs) {
                    done();
                } else {
                    done('should have failed');
                }
            });

            it('should not build the tblBorder attributes (color = fffff)', function(done) {
                let val = 'single', color = 'fffff', sz = 3, space = 0;
                let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
                if (!attrs) {
                    done();
                } else {
                    done('should have failed');
                }
            });

            it('should not build the tblBorder attributes (color = ffpfff)', function(done) {
                let val = 'single', color = 'ffpfff', sz = 3, space = 0;
                let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
                if (!attrs) {
                    done();
                } else {
                    done('should have failed');
                }
            });

            it('should not build the tblBorder attributes (sz = 1)', function(done) {
                let val = 'single', color = 'ffffff', sz = 1, space = 0;
                let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
                if (!attrs) {
                    done();
                } else {
                    done('should have failed');
                }
            });

            it('should not build the tblBorder attributes (space = -1)', function(done) {
                let val = 'single', color = 'ffffff', sz = 3, space = -1;
                let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
                if (!attrs) {
                    done();
                } else {
                    done('should have failed');
                }
            });

            it('should not build the tblBorder attributes (color is number)', function(done) {
                let val = 'single', color = 001010, sz = 3, space = 0;
                let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
                if (!attrs) {
                    done();
                } else {
                    done('should have failed');
                }
            });

            it('should not build the tblBorder attributes (sz is string)', function(done) {
                let val = 'single', color = 'ffffff', sz = 'aa', space = 0;
                let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
                if (!attrs) {
                    done();
                } else {
                    done('should have failed');
                }
            });

            it('should not build the tblBorder attributes (space is string)', function(done) {
                let val = 'single', color = 'ffffff', sz = 3, space = 'ss';
                let attrs = tblProvider.buildTblBordersAttr(val, color, sz, space);
                
                if (!attrs) {
                    done();
                } else {
                    done('should have failed');
                }
            });
        });
    });
};