AutoForm.hooks
	updateProfile:
		onSuccess: (operation, result, template)->
			App.alertSuccess 'Profile Updated'
		onError: (operation, error, template)->
			App.alertError error