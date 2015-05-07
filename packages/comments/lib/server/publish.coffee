Meteor.publish 'comments', ->
	Comments.find()

Meteor.publish 'commentsByDoc', (_id) ->
	Comments.find {doc: _id}

Meteor.publish 'commentsByUser', (_id) ->
	Favorites.find {owner: _id}