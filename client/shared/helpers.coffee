Template.registerHelper 'Config', ->
	Config

Template.registerHelper 'niceName',->
	if Meteor.user().profile.firstName
		Meteor.user().profile.firstName
	else
		Meteor.user().emails[0].address

Template.registerHelper 'Users', ->
	Meteor.users

Template.registerHelper 'User', ->
	Meteor.user()

Template.registerHelper 'NCSchemas', ->
	NCSchemas