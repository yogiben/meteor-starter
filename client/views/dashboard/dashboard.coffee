AutoForm.hooks
	add:
		onError: (operation,error)->
			App.alertError(error)