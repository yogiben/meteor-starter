AutoForm.hooks
	updateProfile:
		onSuccess: (operation, result, template)->
			App.alertSuccess 'Profile Updated'
		onError: (operation, error, template)->
			App.alertError error
	updatePicture:
		onSuccess: (operation, result, template)->
			App.alertSuccess 'Picture Updated'
		onError: (operation, error, template)->
			App.alertError error