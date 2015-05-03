Meteor.publish 'user', ->
	[
    Meteor.users.find @userId
    ProfilePictures.find owner: @userId
  ]