transporter = require 'nodemailer'

module.exports =
  create: (req, res) ->
    data =
      from: sails.config.email.from
      to: req.param 'to'
      cc: req.param 'cc'
      subject: req.param 'subject'
      msg: req.param 'msg'
    sails.log.info _.extend user: req.user, data
    transporter
      .createTransport sails.config.email.opts
      .sendMail data, (err, info) ->
        if err?
          return res.serverError err
        res.ok info
