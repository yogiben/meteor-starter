@Favorites = new Meteor.Collection 'favorites'

Schemas.Favorites = new SimpleSchema
	doc:
		type:String
		regEx: SimpleSchema.RegEx.Id

	owner:
		type: String
		autoValue: ->
			if @isInsert
				Meteor.userId()

	createdAt: 
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

Favorites.attachSchema(Schemas.Favorites)