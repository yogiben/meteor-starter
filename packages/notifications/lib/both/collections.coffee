@Notifications = new Meteor.Collection 'notifications'

Notifications.new = (doc) ->
  if typeof doc.owner == 'undefined'
    doc.owner = Meteor.userId()

  Notifications.insert(doc)

Notifications.readAll = ->
  Meteor.call 'readAllNotifications'

Notifications.read = (_id) ->
  Notifications.update _id, {$set: {read: true}}

NotificationsSchema = new SimpleSchema
  owner:
    type: String
    regEx: SimpleSchema.RegEx.Id

  link:
    type: String
    optional: true

  title: 
    type: String

  read:
    type: Boolean
    defaultValue:  false

  date: 
    type: Date
    autoValue:  ->
      if this.isInsert
        new Date()

  icon:
    type: String
    defaultValue:  'circle-o'

  class:
    type: String
    defaultValue:  'default'

Notifications.attachSchema(NotificationsSchema)
