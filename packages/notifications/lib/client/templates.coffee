notificationClass = ->
  if !this.read then 'unread-notification' else ''

readNotification = ->
  Notifications.read this._id

Template.notificationsDropdown.helpers
  notificationClass: notificationClass
  dropdownIcon: ->
    if @icon then @icon else 'bell'
  dropdownIconEmpty: ->
    if @iconEmpty then @iconEmpty else 'bell-o'
  hasNotifications: ->
    Notifications.find().count() > 0

Template.notificationsDropdown.events
  'click .notification': readNotification

Template.notifications.helpers
  notificationClass: notificationClass
  ago: ->
    moment(@date).fromNow()

Template.notifications.events
  'click .notification': readNotification
