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
      @render()
  @route "add",
    path: "/dashboard/:language/add"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'language', @params.language
      @render()
  @route "words",
    path: "/dashboard/:language/"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'language', @params.language
      Session.set 'title', Languages[@params.language].name
      Session.set 'subtitle', ''
      @render()
  @route "profile",
    path: "/profile"