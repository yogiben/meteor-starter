Router.configure
  layoutTemplate: "masterLayout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  routeControllerNameConverter: "camelCase"

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


Router.waitOn ->
  Meteor.subscribe 'user'
  Meteor.subscribe 'userPicture'


#To allow non-logged in users to access more routes, add it in the config file
signInRequired = -> 
  AccountsEntry.signInRequired @
  @next()

publicRoutes = _.union Config.publicRoutes, ['entrySignUp','entryForgotPassword']

Router.onBeforeAction signInRequired, {except: publicRoutes}