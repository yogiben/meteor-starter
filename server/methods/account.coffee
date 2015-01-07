# Meteor.methods
# 	'changeEmail': (email)->
# 		#...
Meteor.methods
	deleteAccount: (userId) ->
		if @userId == userId
			Meteor.users.remove _id: @userId