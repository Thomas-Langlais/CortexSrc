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
argparser.addArgument(['-t']);

function writeData(data, fileName) {
    return new Promise(function(resolve, reject) {
        fs.writeFile(fileName, data, function(err) {
            if (err) reject(err);
            else resolve('file saved');
        });
    });
}
function getData(fileName) {
    return new Promise(function(resolve, reject) {
        fs.readFile(__dirname + '\\' + fileName, function(err, data) {
            if (err) reject(err);
            else resolve(data);
        });
    });
}
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
function getCsv(fileData, columns) {
    return new Promise(function(resolve, reject) {
        csv.parse(fileData, {
            cast: false,
            columns: columns,
            ltrim: true
        }, function(err, csvData) {
            if (err) reject(err);
            else resolve(csvData);
        })
    });
}

function buildDropDownItem(displayName,value,type = 'docx') {
    switch(type) {
        case 'docx':
            if (displayName && displayName !== '') return '<w:listItem w:displayText="' + displayName + '" w:value="' + value + '"/>';
            else return '<w:listItem w:value="' + value + '"/>';
        default:
            return '<option value="' + value + '">' + displayName + '</option>';
    }
    
}

function buildLookupEn(file) {
    
    getData(file)
        .then(data => getJson(data))
        .then(json => {
            console.log(json);

            let databuff = "";
            let statutes = json.Database.Statutes[0].Statute;
            let regs = json.Database.Regulations[0].Regulation;

            statutes.forEach(statute => {

                if (statute.Language[0] === 'en') {

                    if (statute.Relationships && typeof statute.Relationships[0] === "object") {

                        let regIds = statute.Relationships[0].Relationship.map(rel => rel.$.rid);
                        console.log(regIds);

                        let results = regs.filter(function(reg) {
                            
                            if (regIds.find(id => reg.$.id === id && reg.Language[0] === 'en')) {
                                let displayName = statute.ShortTitle[0] + ' -- ' + reg.ShortTitle[0];
                                let value = statute.$.id + ' -- ' + reg.$.id;
                                console.log(displayName);

                                databuff += buildDropDownItem(displayName,value);
                            }
                        });
                    }
                }
            });

            return writeData(databuff, __dirname + '\\results\\' + args.f + '-resEng');
        })
        .then(result => console(result))
        .catch(err => console.log(err));
}
function buildLookupFr(file) {
    
    getData(file)
        .then(data => getJson(data))
        .then(json => {
            console.log(json);

            let databuff = "";
            let statutes = json.Database.Statutes[0].Statute;
            let regs = json.Database.Regulations[0].Regulation;

            statutes.forEach(statute => {

                if (statute.Language[0] === 'fr') {

                    if (statute.Relationships && typeof statute.Relationships[0] === "object") {

                        let regIds = statute.Relationships[0].Relationship.map(rel => rel.$.rid);
                        console.log(regIds);

                        let results = regs.filter(function(reg) {
                            
                            if (regIds.find(id => reg.$.id === id && reg.Language[0] === 'fr')) {
                                let displayName = statute.ShortTitle[0] + ' -- ' + reg.ShortTitle[0];
                                let value = statute.$.id + ' -- ' + reg.$.id;
                                console.log(displayName);

                                databuff += buildDropDownItem(displayName,value);
                            }
                        });
                    }
                }
            });

            return writeData(databuff, __dirname + '\\results\\' + args.f + '-resFra');
        })
        .then(result => console.log(result))
        .catch(err => console.log(err));
}
function buildProgsEn(file) {

    getData(file)
        .then(data => getCsv(data, ["DepartmentNameEN","DepartmentNameFN","CRorIS","Program","ActivityCode","NameEN","NameFR","DescriptionEN","DescriptionFR"]))
        .then(csvData => {
            console.log(csvData);
            let databuff = [];

            let currentCR;
            let CRCode;
            let cr = [];

            csvData.forEach((row, i) => {
                if (i !== 0) {
                    if (/^CR/.test(row.CRorIS.trim())) {
                        if (row.Program.trim() === '-') {
                            
                            if (cr.length > 0) {

                                cr = cr.sort((a,b) => {
                                    
                                    if (a.name < b.name) {
                                        return -1;
                                    }
                                    if (a.name > b.name) {
                                        return 1;
                                    }

                                    return 0;
                                });

                                databuff.push({
                                    cr: currentCR,
                                    data: cr
                                });

                                currentCR = row.NameEN.trim();
                                CRCode = row.CRorIS.trim();
                                cr = [];
                            } else {
                                currentCR = row.NameEN.trim();
                                CRCode = row.CRorIS.trim();
                            }

                        } else {
                            if (/^P/.test(row.Program)) {
                                let displayName = currentCR + ' -- ' + row.NameEN.trim();
                                console.log(displayName);

                                cr.push({
                                    name: row.NameEN.trim(),
                                    prog: row.ActivityCode.trim()
                                });

                            }
                        }
                    }
                }
            });

            databuff.sort((a,b) => {
                if (a.cr < b.cr) {
                    return -1;
                }
                if (a.cr > b.cr) {
                    return 1;
                }

                return 0;
            });

            let res = '';
            databuff.forEach(node => {
                node.data.forEach(element => {
                    res += buildDropDownItem(node.cr + ' -- ' + element.name, element.prog);
                });
            });

            return writeData(res, __dirname + '\\results\\orgs-eng');
        })
        .then(result => console.log(result))
        .catch(err => console.error(err));
}
function buildProgsFr(file) {

    getData(file)
        .then(data => getCsv(data, ["DepartmentNameEN","DepartmentNameFN","CRorIS","Program","ActivityCode","NameEN","NameFR","DescriptionEN","DescriptionFR"]))
        .then(csvData => {
            console.log(csvData);
            let databuff = [];

            let currentCR;
            let CRCode;
            let cr = [];

            csvData.forEach((row, i) => {
                if (i !== 0 || /^CR/.test(row.CRorIS.trim())) {
                    if (row.Program.trim() === '-') {
                        
                        if (cr.length > 0) {

                            cr = cr.sort((a,b) => {
                                
                                if (a.name < b.name) {
                                    return -1;
                                }
                                if (a.name > b.name) {
                                    return 1;
                                }

                                return 0;
                            });

                            databuff.push({
                                cr: currentCR,
                                data: cr
                            });

                            currentCR = row.NameFR.trim();
                            CRCode = row.CRorIS.trim();
                            cr = [];
                        } else {
                            currentCR = row.NameFR.trim();
                            CRCode = row.CRorIS.trim();
                        }

                    } else {
                        if (/^P/.test(row.Program)) {
                            let displayName = currentCR + ' -- ' + row.NameFR.trim();
                            console.log(displayName);

                            cr.push({
                                name: row.NameFR.trim(),
                                prog: row.ActivityCode.trim()
                            });

                        }
                    }
                }
            });

            databuff.sort((a,b) => {
                if (a.cr < b.cr) {
                    return -1;
                }
                if (a.cr > b.cr) {
                    return 1;
                }

                return 0;
            });

            let res = '';
            databuff.forEach(node => {
                node.data.forEach(element => {
                    res += buildDropDownItem(node.cr + ' -- ' + element.name, element.prog);
                });
            });

            return writeData(res, __dirname + '\\results\\orgs-fra');
        })
        .then(result => console.log(result))
        .catch(err => console.error(err));
}

var args = argparser.parseArgs();

if (args.f === 'lookup.xml') {
    if (args.t === 'eng') buildLookupEn(args.f);
    if (args.t === 'fra') buildLookupFr(args.f);
} else if (args.f === 'Structures by CR-PI-uft8.csv') {
    if (args.t === 'eng') buildProgsEn(args.f);
    if (args.t === 'fra') buildProgsFr(args.f);
}