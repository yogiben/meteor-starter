AutoForm.hooks
	updateProfile:
		onSuccess: (operation, result, template) ->
			sAlert.success 'Profile picture updated'
		onError: (operation, error, template) ->
			sAlert.error 'Profile picture updated'

	updatePicture:
		onSuccess: (operation, result, template) ->
			sAlert.success 'Picture Updated'
		onError: (operation, error, template) ->
			sAlert.error error

# Autoupdate form
# Autoform's autosave="true" wasn't working
Template.profile.events
	'change input': (e,t) ->
		$('#updatePicture').submit()