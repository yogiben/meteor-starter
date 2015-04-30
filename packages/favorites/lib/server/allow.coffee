Favorites.allow
	insert: (userId, doc) ->
		doc.owner == userId
	remove: (userId, doc) ->
		doc.owner == userId