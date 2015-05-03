Meteor.publish 'user', ->
  Meteor.users.find @userId

Meteor.publish 'myProfilePicture', ->
  user = Meteor.users.findOne @userId
  ProfilePictures.find _id: user.profile.picture