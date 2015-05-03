Template.masterLayout.events
	'click .toggle-sidebar': () ->
		if $('body').hasClass('sidebar-active')
			 $('body').removeClass('sidebar-active')
		else
			 $('body').addClass('sidebar-active')
	'click .open-sidebar': () ->
		 $('body').addClass('sidebar-active')
	'click .close-sidebar': () ->
		 $('body').removeClass('sidebar-active')

Template.registerHelper 'momentumIRTransition', ->
	(from, to, element) ->
    "fade"