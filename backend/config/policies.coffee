module.exports =
  policies:
    EmailController:
      '*': false
      create: ['isAuth']
