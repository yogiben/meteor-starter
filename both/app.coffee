@App =
	alertSuccess: (message)->
		Session.set 'alertSuccess', message
	alertError: (message)->
		Session.set 'alertError', message