Deps.autorun ->
	if Session.get 'language'
		Session.set 'Language', Languages[Session.get 'language']
	else
		Session.set 'Language', null

	if Meteor.user()
		Session.set 'learning', Meteor.user().learning

	if Session.get 'learning'
		Session.set 'Learning', _.map Session.get('learning'), (string)->
			Languages[string]
		
	if Meteor.userId() and not _.isNull(Router.current()) and Router.current().route.name == 'entrySignIn'
		Router.go 'dashboard'