Meteor.startup ->
  if Meteor.isClient
    SEO.config
      title: @Config.name
      meta:
        description:  @Config.subtitle

      og:
        image: "http://manuel-schoebel.com/images/authors/manuel-schoebel.jpg"