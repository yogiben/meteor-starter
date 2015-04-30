AutoForm.hooks
	updateProfile:
		onSuccess: (operation, result, template) ->
			sAlert.success 'Profile picture updated'
		onError: (operation, error, template) ->
			sAlert.error 'Profile picture updated'
	updatePicture:
		onSuccess: (operation, result, template) ->
			App.alertSuccess 'Picture Updated'
		onError: (operation, error, template) ->
			App.alertError error