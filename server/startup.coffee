Meteor.startup ->
  # Set the social media credentials
  ServiceConfiguration.configurations.remove service: 'facebook'

  ServiceConfiguration.configurations.insert
    service: 'facebook'
    appId: '399419013545919'
    secret: '7fca074e2a5bd8744275104d090850ce'