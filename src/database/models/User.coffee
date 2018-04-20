{ mongoose } = require './../mongoose'

Schema = mongoose.Schema

userSchema = new Schema
    name:
        required: true
    email:
        required: true
    password: [
        salt:
            required: true
        hash:
            required: true
    ]
    profile: [
        name:
            type: String
        biography:
            type: String

    ]
    
User = mongoose.model 'User', userSchema

module.exports = { User }
