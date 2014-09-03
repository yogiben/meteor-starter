Deps.autorun ->
	if Session.get 'language_name'
		Session.set 'language', Languages[Session.get 'language_name']
	else
		Session.set 'language', null

	if Meteor.user()
		Session.set 'learning', Meteor.user().learning
		
	if Meteor.userId() and not _.isNull(Router.current()) and Router.current().route.name == 'entrySignIn'
		Router.go 'dashboard'