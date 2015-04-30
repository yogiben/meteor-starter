Template.commentFormToggle.events
	'click .btn-comment': (e,t) ->
		Session.set 'commentingOn', $(e.currentTarget).attr('doc')
	'click .btn-cancel-comment': (e,t)->
		Session.set 'commentingOn', null

Template.commentFormToggle.destroyed = () ->
	Session.set 'commentingOn', null

AutoForm.hooks commentForm:

	onSuccess: (operation, result, template) ->
		Session.set 'commentingOn', null