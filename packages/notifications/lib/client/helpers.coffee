Template.registerHelper 'Notifications', (options) ->
  if typeof window['Notifications'] != 'undefined'
    if options instanceof Spacebars.kw and options.hash
      limit = options.hash.limit if options.hash.limit?
      order = {read: 1, date: -1} if options.hash.unreadFirst?
    else
      limit = 0
      order = {date: -1}

    Notifications.find({}, {limit: limit, sort: order}).fetch()

Template.registerHelper 'notificationCount', ->
  if typeof window['Notifications'] != 'undefined'
    Notifications.find({read: false}).count()
