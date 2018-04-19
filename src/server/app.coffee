express = require 'express'
bodyParser = require 'body-parser'
expressCookies = require 'express-cookies'
expressSession = require 'express-session'

{router} = require './routes/web'

app = express()

session =
  secret: 'keyboard cat'
  resave: false
  saveUninitialized: true
  cookie: {}

if app.get 'env' == 'production'
  app.set 'trust proxy', 1
  sess.cookie.secure = true

app.use expressCookies()
app.use expressSession session
app.use router

module.exports = {app}
