Accounts.config
  sendVerificationEmail : true

if Meteor.isClient
  Meteor.startup ->
    AccountsEntry.config
      homeRoute: '/'
      dashboardRoute: '/dashboard'
      profileRoute: 'profile'
      passwordSignupFields: 'USERNAME_AND_EMAIL'

if Meteor.isServer
  Accounts.emailTemplates.siteName = Config.siteName
  Accounts.emailTemplates.from = Config.fromEmail