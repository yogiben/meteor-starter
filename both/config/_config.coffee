@Config =
	name: 'My App'
	title: ->
			TAPi18n.__ 'configTitle'
	subtitle: ->
			TAPi18n.__ 'configSubtitle'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()
	emails:
		from: 'noreply@' + Meteor.absoluteUrl()
	blog: 'http://benjaminpeterjones.com'
	about: 'http://benjaminpeterjones.com'
	username: false
	homeRoute: '/dashboard'
	socialMedia:
		[
			['http://facebook.com/benjaminpeterjones','facebook']
			['http://twitter.com/BenPeterJones','twitter']
			['http://github.com/yogiben','github']
		]

Avatar.options =
	customImageProperty: 'profile.picture'

Meteor.startup ->
	if Meteor.isClient
		TAPi18n.setLanguage('en')
