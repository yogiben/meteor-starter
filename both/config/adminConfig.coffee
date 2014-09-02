AdminConfig =
    # adminEmails: ['benjaminpeterjonesesquire@gmail.com','dave.southperth@gmail.com']
    fromEmail: 'noreply@app.com'
    collections : 
        Posts: {}

if Meteor.isClient
	window.AdminConfig = AdminConfig
else if Meteor.isServer
	global.AdminConfig = AdminConfig