Meteor.publish 'user', ->
	Meteor.users.find {_id:this.userId}