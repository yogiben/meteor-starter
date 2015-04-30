Meteor.startup ->
  if Meteor.isClient
    SEO.config
      title: Config.name
      meta:
        title: Config.name
        description:  Config.subtitle
        