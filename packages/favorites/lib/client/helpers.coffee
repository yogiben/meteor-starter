Template.registerHelper 'Favorites', (collection) ->
	if typeof window['Favorites'] != 'undefined'
		Favorites = []
		favorites = window['Favorites'].find({owner: Meteor.userId()},{sort: {createdAt: -1}}).fetch()
		collection = window[collection]

		_.each favorites, (favorite)->
			Favorites.push(collection.findOne({_id:favorite.doc})) if collection.findOne({_id:favorite.doc})
		Favorites

Template.registerHelper 'favoriteCount', (_id)->
	if typeof window['Favorites'] != 'undefined'
		Favorites.find({doc:_id}).fetch().length

Template.registerHelper 'orderByFavorites', (docs)->
	if typeof window['Favorites'] != 'undefined' and typeof docs != 'undefined'
		_.sortBy docs, (doc) ->
  			-1 * Favorites.find({doc:doc._id}).fetch().length