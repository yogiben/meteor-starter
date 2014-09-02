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
    path: "/dashboard/add"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'language_name', @params.language
      @render()
  @route "addL",
    template: 'add'
    path: "/dashboard/:language/add"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'language_name', @params.language
      @render()

  @route "languages",
    path: "/dashboard/languages/"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'title', 'Languages'
      Session.set 'subtitle', 'What are you trying to learn?'
      @render()
      
  @route "words",
    path: "/dashboard/:language/"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'language_name', @params.language
      Session.set 'title', Languages[@params.language].name
      Session.set 'subtitle', ''
      @render()


  @route "profile",
    path: "/profile"

Router.waitOn ->
  Meteor.subscribe 'user'