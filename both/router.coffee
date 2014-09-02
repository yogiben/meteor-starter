Router.configure
  layoutTemplate: "masterLayout"
  loadingTemplate: "Loading"
  notFoundTemplate: "NotFound"
  routeControllerNameConverter: "camelCase"

Router.onBeforeAction "loading"
Router.map ->
  
  @route "home",
    path: "/"
    layoutTemplate: "homeLayout"

  @route "dashboard",
    path: "/dashboard"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'title','Dashboard'
      Session.set 'subtitle','Learn learn learn'
      
  @route "profile",
    path: "/profile"