Template.registerHelper 'Config', ->
	Config

Template.registerHelper 'NCSchemas', ->
	NCSchemas

Template.registerHelper 'socialMedia', ->
	_.map Config.socialMedia, (obj)->
		obj

Template.registerHelper 'Utils', ->
  Utils