Meteor.users.allow update: (userId, doc, fieldNames, modifier) ->
	(fieldNames[0] == 'learning' or fieldNames[0] == 'languages') && doc.owner == userId

Words.allow
	insert: (userId, doc) ->
		doc.owner == userId
		true
	update: (userId, doc, fields, modifier) ->
		doc.owner == userId
	remove: (userId, doc) ->
		doc.owner == userId

Sets.allow
	insert: (userId, doc) ->
		doc.owner == userId
	update: (userId, doc, fields, modifier) ->
		doc.owner == userId
	remove: (userId, doc) ->
		doc.owner == userId

Tests.allow
	insert: (userId, doc) ->
		doc.owner == userId
	update: (userId, doc, fields, modifier) ->
		doc.owner == userId