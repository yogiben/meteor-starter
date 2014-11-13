Meteor.publish 'posts', ->
	Posts.find()

Meteor.publish 'attachments', ->
	Attachments.find()