Deps.autorun ->
	if Session.get 'language_name'
		Session.set 'language', Languages[Session.get 'language_name']
	else
		Session.set 'language', null