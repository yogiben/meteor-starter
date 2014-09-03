UI.registerHelper 'Config', ->
	Config

UI.registerHelper 'niceName',->
	if Meteor.user().profile.firstName
		Meteor.user().profile.firstName
	else
		Meteor.user().emails[0].address

UI.registerHelper 'Users', ->
	Meteor.users

UI.registerHelper 'Language', ->
	Session.get 'Language'

UI.registerHelper 'Languages',->
	Session.get 'language'

UI.registerHelper 'User', ->
	Meteor.user()

UI.registerHelper 'Languages', ->
	Languages

UI.registerHelper '_Languages', ->
	_.map Languages, (language)->
		language

UI.registerHelper 'learning', ->
	Meteor.user().learning