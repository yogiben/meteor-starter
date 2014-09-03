Template.languages.events
	'click #confirm': () ->
		learning = []
		_.each $( "input:checked" ), (input)->
			learning.push $(input).attr('name').toLowerCase()
			Meteor.users.update {_id:Meteor.userId()}, {$set: {learning:learning}}, (e,r)->
				if e
					alert e
				else
					Router.go 'dashboard'