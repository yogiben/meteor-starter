Template.multiple.events
	'click #addMultiple': () ->
		console.log 'addMultiple'
	'change textarea[name="multiple"]': (e,t)->
		if $(e.currentTarget).val() != ''
			multiple = App.parseMultiple $(e.currentTarget).val()
			Session.set 'multiple', multiple
		else
			Session.set 'multiple', []