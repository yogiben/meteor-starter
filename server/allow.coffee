ProfilePictures.allow
	insert: (userId, doc) ->
		true
	update: (userId, doc, fieldNames, modifier) ->
		true
	download: (userId)->
		true

Posts.allow
	insert: (userId, doc) ->
		userId == doc.owner
	update: (userId, doc, fields, modifier) ->
		userId == doc.owner
	remove: (userId, doc) ->
		userId == doc.owner

Attachments.allow
	insert: (userId, doc) ->
		true
	update: (userId, doc, fieldNames, modifier) ->
		true
	download: (userId)->
		true

Meteor.users.allow
	update: (userId, doc, fieldNames, modifier) ->
		if userId == doc._id and not doc.username and fieldNames.length == 1 and fieldNames[0] == 'username'
			true
		else
			false