mongoose = require 'mongoose'

mongoose.Promise = global.Promise
mongoose.connect 'mongodb://admin:password@ds161148.mlab.com:61148/smartstats'

model.exports = { mongoose }
