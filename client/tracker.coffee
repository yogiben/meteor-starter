Tracker.autorun ->
	#Accounts entry routing bug
	if Meteor.userId() and not _.isNull(Router.current()) and Router.current().route.name == 'atSignIn'
		Router.go 'dashboard'

	if Meteor.userId() and not _.isNull(Router.current()) and Router.current().route.name == 'atSignUp'
		Router.go 'dashboard'

	#Subscriptions
	Meteor.subscribe 'user'
	Meteor.subscribe 'users'
	Meteor.subscribe 'userPicture'
