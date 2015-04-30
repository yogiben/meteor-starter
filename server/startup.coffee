Meteor.startup ->
  # Set the social login credentials credentials

  if Meteor.settings and Meteor.settings.serviceConfigurations
    _.each Meteor.settings.serviceConfigurations, (config, service) ->
      ServiceConfiguration.configurations.upsert { service: service }, $set:
        config