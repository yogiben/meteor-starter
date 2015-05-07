Meteor.methods
  readAllNotifications: ->
    Notifications.update {read: false}, {$set: {read: true}}, {multi: true}
