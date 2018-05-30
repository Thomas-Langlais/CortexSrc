'use strict'

// const xml2js = require('xml2js');
// const xpath = require('xml2js-xpath');
// const fs = require('fs');

// var parser = xml2js.Parser();
// var baseXsl = fs.readFileSync(__dirname + '/schemas/BaseXsl.xsl');

// function isAttributeKey(key) {
//     return key === '$';
// }

// function isCharacterKey(key) {
//     return key === '_';
// }

// function searchForFillAttr(json, results = [], tab=0) {
//     const tabStr = ' ';
//     for (var key in json) {
//         // skip loop if the property is from prototype
//         if (!json.hasOwnProperty(key)) continue;
//         if (key === '$') continue;

//         var obj = json[key];
//         if (typeof(obj) === "object") {
//             console.log(tabStr.repeat(tab) + key);
//             if (Object.keys(obj).find(isAttributeKey)) {
                
//                 for (let key1 in obj.$) {
//                     if (key1 === 'fill') {
//                         results.push([obj.$.fill, obj]);
//                         //remove the fill tag
//                         delete obj.$.fill;
//                     }
//                 }
//             }

//             searchForFillAttr(obj, results, tab + 1);
//         } else {
//             console.log(tabStr.repeat(tab) + key + ': ' + obj);
//         }
//     }
// }

// var promise = new Promise(function(resolve, reject) {
//     parser.parseString(baseXsl, function(err, json) {
//         if (err) {
//             reject('failed to parse baseXsl\n' + err);
//         }
//         if (json) {
//             resolve(json)
//         }
//     })
// }).then(function(json) {
//     console.log(json);
//     var builder = new xml2js.Builder();
//     var buffer = [];
//     searchForFillAttr(json, buffer);

//     process.exit(1);
//     //find a more generic solution later... need to find id's because xml2js-xpath is shit
//     var titleMatches = xpath.find(json,'//xsl:stylesheet//xsl:template//html//body//div//table//tbody//tr//td//div//table//tbody//tr//td//div');
//     var stepMatches = xpath.find(json, '//xsl:stylesheet//xsl:template//html//body//div//table//tbody//tr//td//div//table//tbody//tr//td//table//tbody');
//     var jsonStep = stepMatches.find(function(json) {
//         //look at the attrs and find the steps key
//         if (json.$.id && json.$.id === 'steps') {
//             return json; //returns the ting
//         }
//     });
    
//     process.exit(0);
//     var xml = builder.buildObject(json);
//     console.log(builder);
//     var date = new Date();
//     fs.writeFile(__dirname + '/sample/generatedFile' + date.getFullYear() + '' + date.getMonth() + '' + date.getDay() + '.xsl', xml, function(err) {
//         if (err) throw err;
//         console.log('saved file')
//     });
// }).catch(function(err) {
//     console.log(err);
// });

// console.log(promise);

let TableProvider = require('./generators/providers/DocxProvider').TableProvider;
let tblProvider = new TableProvider(); 
let xmlBuilder = tblProvider.xmlBuilder;

let tblPr = xmlBuilder.create('tblPr', {
    headless: true,
    stringify: {
        eleName: function(name) {
            return 'w:' + name;
        },
        attName: function(name) {
            return 'w:' + name;
        }
    }
});

let attrs = tblProvider.buildTbl(tblPr);
    

console.log(attrs.end())

                
// let tableObj = docx.buildTable(2,2);