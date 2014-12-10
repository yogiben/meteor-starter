AutoForm.hooks updatePassword:
	onSubmit: (insertDoc, updateDoc, currentDoc)->
		if insertDoc.new != insertDoc.confirm
			return App.alertError 'Passwords do not match'
		Accounts.changePassword insertDoc.old, insertDoc.new, (e)->
			$('.btn-primary').attr('disabled',null)
			if e
				App.alertError e.message
			else
				App.alertSuccess 'Password Updated'

		false

Template.setUserName.helpers
	user: ->
		Meteor.user()