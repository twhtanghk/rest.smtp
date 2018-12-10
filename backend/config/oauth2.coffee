_ = require 'lodash'

opts =
  url:
    token: process.env.TOKEN_URL
    verify: process.env.VERIFY_URL
  client:
    id: process.env.CLIENT_ID
    secret: process.env.CLIENT_SECRET
  user:
    id: process.env.USER_ID
    secret: process.env.USER_SECRET
    email: process.env.USER_EMAIL
  grant_type: 'password'

module.exports = 
  oauth2: _.defaultsDeep opts, require('activerecord-model').oauth2
