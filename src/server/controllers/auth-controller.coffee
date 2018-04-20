{ isEmail, isAlphanumeric } = require 'validator'
crypto = require 'crypto'

handleLogin = (req, res) ->
    res.json
        hello: 'world'

handleRegister = (req, res) ->
    salt = crypto.randomBytes 128 
        .toString 'base64'

    name = req.body.name
    username = req.body.username
    password = req.body.password

module.exports = { handleLogin, handleRegister }
