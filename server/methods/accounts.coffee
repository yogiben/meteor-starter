Meteor.methods
	deleteAccount: (userId) ->
		if @userId == userId
			Meteor.users.remove _id: @userId