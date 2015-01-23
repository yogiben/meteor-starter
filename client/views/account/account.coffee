AutoForm.hooks updatePassword:
	onSubmit: (insertDoc, updateDoc, currentDoc)->
		if insertDoc.new != insertDoc.confirm
			Alert.error 'Passwords do not match'
			return false
		Accounts.changePassword insertDoc.old, insertDoc.new, (e)->
			$('.btn-primary').attr('disabled',null)
			if e
				Alert.error e.message
			else
				Alert.success 'Password Updated'

		false

Template.account.events
	'click .js-delete-account': ->
		Meteor.call 'deleteAccount', Meteor.userId()

Template.setUserName.helpers
	user: ->
		Meteor.user()