AutoForm.hooks
	updateProfile:
		onSuccess: (operation, result, template) ->
			sAlert.success 'Profile updated'
		onError: (operation, error, template) ->
			sAlert.error error

	updatePicture:
		onSuccess: (operation, result, template) ->
			sAlert.success 'Picture Updated'
		onError: (operation, error, template) ->
			sAlert.error error

# Autoupdate form
# Autoform's autosave="true" wasn't working
Template.profile.events
	'change form#updatePicture input': (e,t) ->
		Meteor.setTimeout ->
			$('form#updatePicture').submit()
		, 10