'use strict';

const xml2js = require('xml2js');
const fs = require('fs');
const csv = require('csv');

var ArgumentParser = require('argparse').ArgumentParser;
var argparser = new ArgumentParser({
    version: '1.1.1',
    addHelp: false
});

argparser.addArgument(['-f']);

function getJson(fileData) {
    return new Promise(function(resolve, reject) {
        var parser = new xml2js.Parser();
        parser.parseString(fileData, function(err, json) {
            if (err) {
                reject(err);
            } else {
                resolve(json);
            }
        })
    });
}

function buildDropDownItem(displayName,value) {
    if (displayName && displayName !== '') return '<w:listItem w:displayText="' + displayName + '" w:value="' + value + '"/>';
    else return '<w:listItem w:value="' + value + '"/>';
}

var args = argparser.parseArgs();
fs.readFile(__dirname + '\\' + args.f, function(err, data) {
    if (err) {
        console.log(err);
    } else {
        getJson(data).then(function(json) {

            console.log(json);

            let databuff = "";
            let acts = json.ActsRegsList.Acts[0].Act, regs = json.ActsRegsList.Regulations[0].Regulation

            acts.forEach(act => {
                if (act.Language[0] === 'eng') {
                    if (act.RegsMadeUnderAct && typeof act.RegsMadeUnderAct[0] === "object") {
                        let regIds = act.RegsMadeUnderAct[0].Reg.map(reg => reg.$.idRef);
                        console.log(regIds);
                        let results = regs.filter(function(reg) {
                            if (regIds.find(reg.$.id)) {
                                console.log(reg);
                            }
                        });
                    }
                }
            });

            // fs.writeFile(__dirname + '\\results\\' + args.f + '-resFra', databuff, function(err) {
            //     if (err) {
            //         console.log(err);
            //     } else {
            //         console.log('file saved');
            //     }
            // });
        }).catch(function(err) {
            console.log(err);
        })
    }
});

// fs.readFile(args.f, function(err, data) {
//     if (err) throw err;
//     else {
//         csv.parse(data, {
//             cast: false,
//             columns: ['OrgID','OrgLegalNameEng','OrgLegalNameFra','OrgAppliedNameEng','OrgAppliedNameFra','OrgAbbvrEng','OrgAbbvrFra','ProgUID','ProgNameEng','ProgNameFra'],
//             ltrim: true
//         }, function(err, csvData) {
//             if (err) throw err;
//             else {
//                 console.log(csvData);
//                 var dataBuff = '';
//                 csvData.forEach((row,i) => {
//                     if (i !== 0) {
//                         dataBuff += buildDropDownItem(row.OrgLegalNameFra.trim(), row.OrgID);
//                     }
//                 });
//                 fs.writeFile(__dirname + '\\results\\orgs-fra', dataBuff, function(err) {
//                     if (err) throw err;
//                     else console.log('saved');
//                 });
//             }
//         });
//     }
// });