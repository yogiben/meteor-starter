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

UI.registerHelper 'Languages', ->
	Languages

UI.registerHelper 'learning', ->
	Session.get 'learning'

UI.registerHelper 'Learning', ->
	Session.get 'Learning'



UI.registerHelper '_', ->
	_

UI.registerHelper 'User', ->
	Meteor.user()