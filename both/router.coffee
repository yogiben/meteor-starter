Router.configure
  layoutTemplate: "masterLayout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  routeControllerNameConverter: "camelCase"
  onBeforeAction: ->
    if Meteor.userId() and not Meteor.user().username
      @redirect '/setUserName'
    @next()

Router.map ->
  
  @route "home",
    path: "/"
    layoutTemplate: "homeLayout"
  @route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        Meteor.subscribe 'posts'
        Meteor.subscribe 'favorites'
        Meteor.subscribe 'comments'
        Meteor.subscribe 'attachments'
      ]
    data: ->
      Posts: Posts.find({},{sort: {createdAt: -1}}).fetch()
  @route "profile",
    path: "/profile"
    waitOn: ->
      Meteor.subscribe 'profilePictures'
  @route "account",
    path: "/account"
  @route "setUserName",
    path: "/setUserName"
    onBeforeAction: ->
      if Meteor.userId() and Meteor.user().username
        @redirect '/dashboard'
      @next()


Router.waitOn ->
  Meteor.subscribe 'user'
  Meteor.subscribe 'userPicture'