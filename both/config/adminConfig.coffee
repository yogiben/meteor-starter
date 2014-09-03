AdminConfig =
	name: Config.name
	# adminEmails: ['benjaminpeterjonesesquire@gmail.com','dave.southperth@gmail.com']
	fromEmail: 'noreply@app.com'
	collections : 
		Posts: {
			color: 'red'
			icon: 'pencil'
		}
		Comments: {
			color: 'green'
			icon: 'comments'
		}
		Pages: {
			color: 'yellow'
		}
	dashboard:
		homeUrl: '/dashboard'
		# widgets: [
		# 	{
		# 		template: 'adminCollectionWidget'
		# 		data:
		# 			collection: 'Posts'
		# 			class: 'col-lg-3 col-xs-6'
		# 	}
		# 	{
		# 		template: 'adminUserWidget'
		# 		data:
		# 			class: 'col-lg-3 col-xs-6'
		# 	}
		# ]

if Meteor.isClient
	window.AdminConfig = AdminConfig
else if Meteor.isServer
	global.AdminConfig = AdminConfig