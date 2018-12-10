co = require 'co'
req = require 'supertest'

describe 'email', ->
  token = null

  before -> co ->
    token = yield sails.config.oauth2.validToken sails.config.oauth2

  it 'create', ->
    req sails.hooks.http.app
      .post '/api/email'
      .set 'Authorization', "Bearer #{token}"
      .set 'Content-Type', 'application/json'
      .send
        to: ['user1@abc.com', 'user2@abc.com' ]
        cc: ['user3@abc.com']
        subject: 'email.create test'
        msg: 'email.create.test'
      .expect 200
      .then console.log
