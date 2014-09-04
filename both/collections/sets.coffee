Schemas = {}

Sets = new Meteor.Collection('sets');

Schemas.Sets = new SimpleSchema
	name:
		type: String
		max: 60

	language:
		type: String
		autoValue: ->
			if Meteor.isClient
				Session.get 'language'
		autoform:
			options: ->
				if Session.get 'language'
					[
						label: Session.get('Language').name
						value: Session.get('Language').string
					]
				else
					_.map Session.get('Learning'), (Language)->
						label: Language.name
						value: Language.string

	description:
		type: String
		optional: true
		autoform:
			rows: 3

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

	public:
		type: Boolean
		optional: true
		autoValue: ->
			false
	
	starter:
		type: Boolean
		optional: true
		autoValue: ->
			false

Sets.attachSchema(Schemas.Sets)

if Meteor.isClient
	window.Sets = Sets
else if Meteor.isServer
	global.Sets = Sets