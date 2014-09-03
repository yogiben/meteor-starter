Deps.autorun ->
	Meteor.subscribe 'user'
	Meteor.subscribe 'words'
	Meteor.subscribe 'sets'
	Meteor.subscribe 'tests'

	if Session.get 'language'
		Session.set 'Language', Languages[Session.get 'language']
		Session.set 'Sets', Sets.find({language: Session.get 'language'}).fetch()
	else
		Session.set 'Language', null
		Session.set 'Sets', null

	if Session.get 'set'
		Session.set 'Set', Sets.findOne {_id: Session.get('set')}
	else
		Session.set 'Set', null

	if Meteor.user()
		Session.set 'learning', Meteor.user().learning

	if Session.get 'learning'
		Session.set 'Learning', _.map Session.get('learning'), (string)->
			Languages[string]

	Session.set 'Words', Words.find( Session.get('filter') ).fetch()
	Session.set 'Sets', Sets.find( Session.get('filter') ).fetch()
	Session.set 'Tests', Tests.find( Session.get('filter') ).fetch()

	#Filters
	Session.setDefault 'filter', {}

	if Session.get('language') and Session.get('set')
		filter =
			$and : [
				{language: Session.get 'language'}
				{set: Session.get 'set'}
			]
		Session.set 'filter', filter
	else if Session.get 'language'
		filter =
			language: Session.get 'language'
		Session.set 'filter', filter
	else if Session.get 'set'
		filter =
			set: Session.get 'set'
		Session.set 'filter', filter


	#Accounts entry routing bug
	if Meteor.userId() and not _.isNull(Router.current()) and Router.current().route.name == 'entrySignIn'
		Router.go 'dashboard'

	if Meteor.userId() and not _.isNull(Router.current()) and Router.current().route.name == 'entrySignUp'
		Router.go 'dashboard'

	if Meteor.user()
		Session.set 'User', Meteor.user()