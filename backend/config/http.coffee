module.exports =
  http:
    middleware:
      order: [
        'compress'
        'bodyParser'
        'router'
      ]
