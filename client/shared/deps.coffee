Deps.autorun ->
	if Session.get 'language_name'
		Session.set 'language', Languages[Session.get 'language_name']
	else
		Session.set 'language', null
		
	if Meteor.userId() and not _.isNull(Router.current()) and Router.current().route.name == 'entrySignIn'
		Router.go 'dashboard'