# Template.dashboardSidebar.rendered = ->
#   $(".treeview").tree()
#   return

# Template.dashboardHeader.rendered = ->
#   $("[data-toggle='offcanvas']").click (e) ->
#     e.preventDefault()
    
#     if $(window).width() <= 992
#       $(".row-offcanvas").toggleClass "active"
#       $(".left-side").removeClass "collapse-left"
#       $(".right-side").removeClass "strech"
#       $(".row-offcanvas").toggleClass "relative"
#     else
      
#       #Else, enable content streching
#       $(".left-side").toggleClass "collapse-left"
#       $(".right-side").toggleClass "strech"
#     return

#   return

Template.dashboardLayout.events
	'click .session-set': (e,t) ->
		key = $(e.currentTarget).attr('key')
		value =  $(e.currentTarget).attr('value')
		Session.set key, value