/**
 * Created by Gavin on 2014/8/25.
 */
var log4js = require('log4js');
log4js.configure('./lib/logger.json', {});
var logger = log4js.getLogger('applog');
exports.logger = global.logger = logger;
