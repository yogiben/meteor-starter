Schemas = {}

Tests = new Meteor.Collection('tests');

Schemas.TestHistory = new SimpleSchema
	word:
		type: String
	start:
		type: Number
	end:
		type: Number

Schemas.Tests = new SimpleSchema
	name:
		type:String
		max: 60

	language:
		type: String

	createdAt: 
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()
	words:
		type: [String]

	questions:
		type: Number

	correct:
		type: Number

	history:
		type: [Schemas.TestHistory]

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

Tests.attachSchema(Schemas.Tests)

if Meteor.isClient
	window.Tests = Tests
else if Meteor.isServer
	global.Tests = Tests