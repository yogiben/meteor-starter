AutoForm.hooks
	updateProfile:
		onSuccess: (operation, result, template)->
			Alert.success 'Profile picture updated'
		onError: (operation, error, template)->
			Alert.error 'Profile picture updated'
	updatePicture:
		onSuccess: (operation, result, template)->
			App.alertSuccess 'Picture Updated'
		onError: (operation, error, template)->
			App.alertError error