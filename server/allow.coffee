Meteor.users.allow update: (userId, doc, fieldNames, modifier) ->
	fieldNames[0] == 'languages' && doc._id == userId