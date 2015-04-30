Router.configure
  layoutTemplate: "masterLayout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  routeControllerNameConverter: "camelCase"

  onBeforeAction: ->
  	# Redirect to set username if required
    if Config.username and Meteor.userId() and not Meteor.user().username
      @redirect '/setUserName'
    @next()


Router.waitOn ->
  Meteor.subscribe 'user'
  Meteor.subscribe 'userPicture'


prepareView = ->
  window.scrollTo(0,0)
  $('body').removeClass('sidebar-active')

  #Fuck off broken modals
  $('.modal-backdrop').removeClass('in')
  $bd =  $('.modal-backdrop')
  setTimeout ->
    $bd.remove()
  , 300

  #For skrollr :(
  $('body').attr('style','')

Router.onAfterAction prepareView

#To allow non-logged in users to access more routes, add it in the config file
Router.plugin 'ensureSignedIn', except: [
  'home'
  'atSignIn'
  'atSignUp'
  'atForgotPassword'
  'atSignOut'
]
  

saveRedirectUrl = ->
  unless Meteor.loggingIn()
    if not Meteor.user()
      Session.set 'redirectToAfterSignIn', @url
  @next()

publicRoutes = _.union Config.publicRoutes, ['atSignIn','atSignUp','atForgotPassword']


Router.onBeforeAction saveRedirectUrl, {except: _.union publicRoutes, ['atSignOut']}

signInProhibited = ->
  if Meteor.user()
    Router.go('dashboard')
  else
    if @next
      @next()
      

Router.onBeforeAction signInProhibited, {only: ['atSignOut','atSignUp','atForgotPassword']}

