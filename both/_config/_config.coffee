@Config =
	name: 'My App'
	title: 'Make Meteor Apps. Fast.'
	subtitle: 'Create beautiful  Meteor apps really fast'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()
	emails:
		from: 'noreply@' + Meteor.absoluteUrl()
	blog: 'http://benjaminpeterjones.com'
	about: 'http://benjaminpeterjones.com'
	username: false
	homeRoute: '/'
	dashboardRoute: '/dashboard'
	socialMedia:
		facebook:
			url: 'http://facebook.com/benjaminpeterjones'
			icon: 'facebook'
		twitter:
			url: 'http://twitter.com/BenPeterJones'
			icon: 'twitter'
		github:
			url: 'http://github.com/yogiben'
			icon: 'github'
	publicRoutes: ['home']