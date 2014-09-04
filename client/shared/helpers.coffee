UI.registerHelper 'Config', ->
	Config

UI.registerHelper 'niceName',->
	if Session.get('User')
		if Session.get('User').profile.firstName
			Session.get('User').profile.firstName
		else
			Session.get('User').emails[0].address

UI.registerHelper 'Users', ->
	Meteor.users

UI.registerHelper 'Language', ->
	Session.get 'Language'

UI.registerHelper 'Languages', ->
	Languages

UI.registerHelper 'learning', ->
	Session.get 'learning'

UI.registerHelper 'Learning', ->
	Session.get 'Learning'

UI.registerHelper 'toArray', ->
	_.map Languages, (Language)->
		Language

UI.registerHelper 'set', ->
	Session.get 'set'

UI.registerHelper 'Set', ->
	Session.get 'Set'


UI.registerHelper '_', ->
	_

UI.registerHelper 'User', ->
	Meteor.user()

UI.registerHelper 'Words', ->
	Session.get 'Words'

UI.registerHelper 'Sets', ->
	Session.get 'Sets'

UI.registerHelper 'Tests', ->
	Session.get 'Tests'

UI.registerHelper 'addType',->
	Session.get 'addType'

UI.registerHelper 'addSets',->
	Session.get 'addSets'