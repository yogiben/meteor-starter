Template.languages.events
	'click #confirm': () ->
		languages = []
		_.each $( "input:checked" ), (input)->
			languages.push $(input).attr('name').toLowerCase()
			Meteor.users.update {_id:Meteor.userId()}, {$set: {languages:languages}}, (e,r)->
				if e
					alert e
				else
					Router.go 'dashboard'