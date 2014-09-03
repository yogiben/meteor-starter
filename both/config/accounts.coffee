Accounts.config
  sendVerificationEmail : true

if Meteor.isClient
  Meteor.startup ->
    AccountsEntry.config
      homeRoute: '/'
      dashboardRoute: '/dashboard'
      profileRoute: 'profile'
      passwordSignupFields: 'EMAIL_ONLY'

if Meteor.isServer
  Accounts.emailTemplates.siteName = Config.siteName
  Accounts.emailTemplates.from = Config.fromEmail