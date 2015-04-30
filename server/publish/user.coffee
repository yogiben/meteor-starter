Meteor.publish 'user', ->
	Meteor.users.find this.userId

Meteor.publish 'users', ->
	Meteor.users.find {}, {fields: {profile: 1, emails: 1}}

Meteor.publish 'userPicture', ->
	if Meteor.users.findOne({_id:this.userId}) && Meteor.users.findOne({_id:this.userId}).profile
		_id = Meteor.users.findOne({_id:this.userId}).profile.picture
		ProfilePictures.find _id : _id
	else
		@ready()

Meteor.publish 'profilePictures', ->
	ProfilePictures.find()