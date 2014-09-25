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
    waitOn: ->
      [
        Meteor.subscribe 'posts'
        Meteor.subscribe 'favorites'
        Meteor.subscribe 'comments'
      ]
    data: ->
      Posts: Posts.find({},{sort: {createdAt: -1}}).fetch()
  @route "profile",
    path: "/profile"
    waitOn: ->
      Meteor.subscribe 'profilePictures'
  @route "account",
    path: "/account"


# Router.onRun (->
#   console.log @
# ),
#   except: "home"

Router.waitOn ->
  Meteor.subscribe 'user'
  Meteor.subscribe 'userPicture'