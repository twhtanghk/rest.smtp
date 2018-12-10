module.exports =
  email:
    from: process.env.SMTP_FROM || 'admin@abc.com'
    opts:
      host: process.env.SMTP_HOST || 'smtp.abc.com'
      port: process.env.SMTP_PORT || 25
      secure: false
