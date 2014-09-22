@App =
	alertSuccess: (message)->
		Session.set 'alertSuccess', message
		Session.set 'alertError', ''
	alertError: (message)->
		Session.set 'alertError', message
		Session.set 'alertSuccess', ''