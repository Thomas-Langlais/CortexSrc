'use strict';

//add libs
const ArgumentParser = require('argparse').ArgumentParser;
const winston = require('winston');
const generatorFacade = require('./DocumentGeneratorFacade');
const errorEnums = require('./common/HandlerUtils').errorStateEnums;

//setup loggers
winston.setLevels(winston.config.syslog.levels);
winston.loggers.add('Document Parsing', {
    console: {
        level: 'debug',
        colorize: false,
        label: 'debug-log'
    }
});

const logger = winston.loggers.get('Document Parsing');

//setup parser
var argParser = new ArgumentParser({
    version: '0.0.1',
    addHelp: true,
    description: 'This tool is used to generate documents in different formats'
});

argParser.addArgument(['-d', '--dir'], {
    help: 'Used to supply the output directory to drop the file generated\ndefault value is the current directory',
    defaultValue: '.', //defaults to using the current directory
    type: 'string'
});
argParser.addArgument(['-t', '--type'], {
    help: 'Used to supply the output type of the file\nCurrently supporting ',
    type: 'string'
});
argParser.addArgument(['-n', '--name'], {
    help: 'Used to supply the specific file name\ndefault value will be generatedFile-{Current Time)',
    defaultValue: 'generatedFile_' + new Date().getDate() + '-' + new Date().getMonth() + '-' + new Date().getFullYear() + '_' + new Date().getTime(),
    type: 'string'
});
argParser.addArgument(['-f', '--file'], {
    help: 'Used to supply the input file used to generate a file',
    type: 'string'
});

var args = argParser.parseArgs();
logger.log('info','%j',args);

//begin to check the required vars in order to proceed
if (args.file === null || args.file === '') {
    logger.log('error',"File was not supplied correctly");
    return;
}
if (args.type === null || args.type === '') {
    logger.log('error',"File type was not supplied correctly");
    return;
}

var docGenerator = generatorFacade.documentGenerator(args.file, args.type, function (handle, result) {
    if (handle) {
        switch (handle.errorState) {
            case errorEnums.fatal:
                logger.log('error', handle.description);
                break;
            case errorEnums.error:
                logger.log('error', handle.description);
                break;
            default:
                logger.log('error', 'something went wrong');
                break;
        }
        process.exit(1);
    }
    logger.log('debug', result);
});

console.log(docGenerator);