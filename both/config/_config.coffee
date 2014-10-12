@Config =
	name: 'My App'
	title: 'Make Meteor Apps. Fast.'
	subtitle: 'Create beautiful and functioning Meteor apps really quick'
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