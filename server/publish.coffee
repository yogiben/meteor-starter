Meteor.publish 'user', ->
	Meteor.users.find this.userId

Meteor.publish 'userPicture', ->
	_id = Meteor.users.findOne({_id:this.userId}).profile.picture
	if _id
		ProfilePictures.find _id
	else
		@ready()

Meteor.publish 'profilePictures', ->
	ProfilePictures.find()