if Meteor.isClient
  Template.registerHelper 'momentumIRTransition', ->
    (from, to, element) ->
      "fade"