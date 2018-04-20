router = require 'express'
    .Router()
{ handleLogin, handleRegister } = require './../controllers/auth-controller'


router.get '/', (req, res) ->
    res.render 'index'
router.get '/auth/login', (req, res) ->
    res.render 'login'
router.get '/auth/register', (req, res) ->
    res.render 'register'

router.post '/auth/login', handleLogin
router.post '/auth/register', handleRegister

module.exports = {router}
