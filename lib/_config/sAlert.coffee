Meteor.startup ->
  if Meteor.isClient
    sAlert.config
      effect: "stackslide"
      position: "bottom-right"
      timeout: 3000
      html: false