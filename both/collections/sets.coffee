Schemas = {}

Sets = new Meteor.Collection('sets');

Schemas.Sets = new SimpleSchema
	name:
		type: String
		max: 60

	language:
		type: String

	description:
		type: String
		optional: true

	words:
		type: [String]
		optional: true

	createdAt: 
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()
	updatedAt:
		type:Date
		optional:true
		autoValue: ->
			if this.isUpdate
				new Date()
	owner: 
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoValue: ->
			if this.isInsert
				Meteor.userId()

		autoform:
			options: ->
				_.map Meteor.users.find().fetch(), (user)->
					label: user.emails[0].address
					value: user._id

Sets.attachSchema(Schemas.Sets)

if Meteor.isClient
	window.Sets = Sets
else if Meteor.isServer
	global.Sets = Sets