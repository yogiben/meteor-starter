Config =
	name: 'My App'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright 2014'
	emails:
		from: 'noreply@' + Meteor.absoluteUrl()

if Meteor.isClient
	window.Config = Config
else if Meteor.isServer
	global.Config = Config