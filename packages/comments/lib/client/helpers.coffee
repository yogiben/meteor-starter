Template.registerHelper 'CommentsByDoc', (_id) ->
	if typeof window['Comments'] != 'undefined'
		Comments.find({doc:_id},{sort: {createdAt: -1}}).fetch()

Template.registerHelper 'CommentsByUser', (_id) ->
	if typeof window['Comments'] != 'undefined'
		Comments.find({owner:_id},{sort: {createdAt: -1}}).fetch()

Template.registerHelper 'CommentsByCollection', (collection) ->
	if typeof window['Comments'] != 'undefined'
		Comments = []
		comments = window['Comments'].find({owner: Meteor.userId()},{sort: {createdAt: -1}}).fetch()
		collection = window[collection]

		_.each comments, (favorite)->
			Comments.push(collection.findOne({_id:favorite.doc})) if collection.findOne({_id:favorite.doc})
		Comments


Template.registerHelper 'commentCount', (_id)->
	if typeof window['Comments'] != 'undefined'
		Comments.find({doc:_id}).fetch().length

Template.registerHelper 'commentingOn', (_id)->
	Session.equals 'commentingOn', _id