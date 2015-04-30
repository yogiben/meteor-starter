Template.favoriteButton.helpers
	isFavorite: (_id) ->
		Favorites.findOne
			doc: _id
			owner: Meteor.userId()

Template.favoriteButtonNotFavorited.events
	'click .js-favorite-button': (e,t) ->
		Favorites.insert
			doc: $(e.currentTarget).attr('doc')
			owner: Meteor.userId()

Template.favoriteButtonFavorited.events
	'click .js-favorite-button': (e,t) ->
		favorite = Favorites.findOne
			owner: Meteor.userId()
			doc: $(e.currentTarget).attr('doc')
		Favorites.remove
			_id: favorite._id