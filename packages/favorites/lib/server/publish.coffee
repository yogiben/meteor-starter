Meteor.publish 'myFavorites', ->
	Favorites.find({owner: @userId})