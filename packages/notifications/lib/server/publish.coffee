Meteor.publish 'notifications', ->
  Notifications.find {owner: this.userId}
