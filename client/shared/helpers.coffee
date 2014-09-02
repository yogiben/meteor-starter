UI.registerHelper 'Config', ->
	Config

UI.registerHelper 'niceName',->
	if Meteor.user().profile.firstName
		Meteor.user().profile.firstName
	else
		Meteor.user().emails[0].address

UI.registerHelper 'Users', ->
	Meteor.users

UI.registerHelper 'User', ->
	Meteor.user()