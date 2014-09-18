Schemas = {}

@Comments = new Meteor.Collection('comments');

Schemas.Comments = new SimpleSchema
	title:
		type:String
		max: 60

	content:
		type: String
		autoform:
			rows: 5

	createdAt: 
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	updatedAt:
		type:Date
		optional:true
		autoValue: ->
			if this.isUpdate
				new Date()

	post:
		type: String
		autoform:
			options: ->
				_.map Posts.find().fetch(), (post)->
					label: post.title
					value: post._id

	owner: 
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoValue: ->
			if this.isInsert
				Meteor.userId()
		autoform:
			options: ->
				_.map Meteor.users.find().fetch(), (user)->
					label: user.emails[0].address
					value: user._id

Comments.attachSchema(Schemas.Comments)