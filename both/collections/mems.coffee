Schemas = {}

Mems = new Meteor.Collection('mems');

Schemas.Mems = new SimpleSchema
	word:
		type: String

	content:
		type: String

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

Mems.attachSchema(Schemas.Mems)

if Meteor.isClient
	window.Mems = Mems
else if Meteor.isServer
	global.Mems = Mems