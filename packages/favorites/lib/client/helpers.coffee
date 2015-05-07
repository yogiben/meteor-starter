Template.registerHelper 'favoritesByDoc', (_id)->
	Favorites.find doc: _id

Template.registerHelper 'myFavorites', ->
	Favorites.find owner: Meteor.userId()