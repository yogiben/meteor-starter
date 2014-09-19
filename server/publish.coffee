Meteor.publish 'user', ->
	Meteor.users.find this.userId

Meteor.publish 'userPicture', ->
	if Meteor.users.findOne({_id:this.userId})
		_id = Meteor.users.findOne({_id:this.userId}).profile.picture
		ProfilePictures.find _id
	else
		@ready()

Meteor.publish 'profilePictures', ->
	ProfilePictures.find()