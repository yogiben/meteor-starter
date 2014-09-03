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

  @route "profile",
    path: "/profile"

  @route "languages",
    path: "/languages/"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'title', 'Languages'
      Session.set 'subtitle', 'What are you trying to learn?'
      @render()


  @route "add",
    path: "/:username/add"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'language', @params.language
      @render()

  @route "addL",
    template: 'add'
    path: "/:username/:language/add"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'language', @params.language
      @render()

  @route "dashboard",
    path: "/:username"
    layoutTemplate: "dashboardLayout"
    action: ->
      Session.set 'title','Dashboard'
      Session.set 'subtitle','Learn learn learn'
      @render()
      
  @route "words",
    path: "/:username/:language/"
    layoutTemplate: "dashboardLayout"

    action: ->
      Session.set 'language', @params.language
      Session.set 'title', Languages[@params.language].name
      Session.set 'subtitle', ''
      @render()

Router.waitOn ->
  Meteor.subscribe 'user'