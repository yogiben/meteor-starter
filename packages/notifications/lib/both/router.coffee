Router.map ->
  @route 'notifications',
    path: '/notifications',
    waitOn: ->
      [
        Meteor.subscribe 'notifications'
      ]
  @route 'messages',
    path: '/messages/:_id',
    layout: 'notifications'
