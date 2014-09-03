Schemas = {}

Words = new Meteor.Collection('words')

Schemas.WordsAttempts = new SimpleSchema
	date:
		type: Date
	start:
		type: Number
	end:
		type: Number

Schemas.Words = new SimpleSchema
	source:
		type: String
		max: 200
		label: 'English'

	target:
		type: String
		max: 200
		# label: ->
		# 	if Meteor.isClient
		# 		Languages[Session.get('Language')].name
		# 	else
		# 		'Target'

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

	sets:
		type: [String]



	transliteration:
		type: String
		max: 200
		optional: true

	level:
		type: Number
		autoValue: ->
			if @isInsert
				0

	mems:
		type: [String]
		optional: true

	history:
		type: [Schemas.WordsAttempts]
		optional:true

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

Words.attachSchema(Schemas.Words)

if Meteor.isClient
	window.Words = Words
else if Meteor.isServer
	global.Words = Words