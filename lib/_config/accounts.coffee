# See https://github.com/meteor-useraccounts/core/blob/master/Guide.md

AccountsTemplates.configure
  
  # Behaviour
  confirmPassword: false
  enablePasswordChange: true
  forbidClientAccountCreation: false
  overrideLoginErrors: true
  sendVerificationEmail: false
  lowercaseUsername: false
  
  # Appearance
  showAddRemoveServices: true
  showForgotPasswordLink: true
  showLabels: true
  showPlaceholders: true
  showResendVerificationEmailLink: false
  
  # Client-side Validation
  continuousValidation: false
  negativeFeedback: false
  negativeValidation: true
  positiveValidation: true
  positiveFeedback: true
  showValidating: true
  
  # Privacy Policy and Terms of Use
  privacyUrl: Config.privacyUrl || null
  termsUrl: Config.termsUrl || null
  
  # Redirects
  homeRoutePath: Config.homeRoute || null
  redirectTimeout: 4000
  
  # Hooks
  onLogoutHook: ->
    console.log 'logout'

  onSubmitHook: ->
    console.log 'submitting form'

AccountsTemplates.configureRoute 'signIn'
AccountsTemplates.configureRoute 'signUp'
AccountsTemplates.configureRoute 'forgotPwd'