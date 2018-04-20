{join} = require 'path'
helmet = require 'helmet'
express = require 'express'
bodyParser = require 'body-parser'
expressCookies = require 'express-cookies'
expressSession = require 'express-session'

{router} = require './routes/web'

app = express()

session =
  secret: 'VAz@d859b2Rd774BK29t2b^z7QKy75U&'
  resave: false
  saveUninitialized: true
  cookie: {}

if app.get 'env' == 'production'
  app.set 'trust proxy', 1
  sess.cookie.secure = true

app.set 'views', join __dirname, '../..', 'src/resources/views'
app.set 'view engine', 'pug'

app.use helmet()
app.use expressCookies()
app.use expressSession session
app.use router

module.exports = {app}
