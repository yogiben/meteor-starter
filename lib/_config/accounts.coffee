AccountsTemplates.configure
	sendVerificationEmail : true
	showAddRemoveServices: true
	showForgotPasswordLink: true

# if Meteor.isClient
# 	Meteor.startup ->
# 		if Config.username
# 			AccountsTemplates.configureRoute
# 				homeRoute: '/'
# 				dashboardRoute: '/dashboard'
# 				profileRoute: 'profile'
# 				passwordSignupFields: 'USERNAME_AND_EMAIL'
# 		else
# 			AccountsTemplates.configureRoute
# 				homeRoute: '/'
# 				dashboardRoute: '/dashboard'
# 				profileRoute: 'profile'
# 				passwordSignupFields: 'EMAIL_ONLY'

AccountsTemplates.configureRoute 'signIn'
AccountsTemplates.configureRoute 'signUp'
AccountsTemplates.configureRoute 'forgotPwd'