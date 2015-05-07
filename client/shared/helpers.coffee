Template.registerHelper 'Config', ->
	Config

Template.registerHelper 'NCSchemas', ->
	NCSchemas

Template.registerHelper 'socialMedia', ->
	_.map Config.socialMedia, (obj)->
		obj

Template.registerHelper 'Utils', ->
  Utils

Template.registerHelper 'currentRoute', ->
  if Router and Router.current and Router.current()
    Router.current()

Template.registerHelper 'isRouteReady', ->
  Router and Router.current and Router.current() and Router.current()._waitlist._notReadyCount == 0