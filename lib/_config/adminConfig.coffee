@AdminConfig =
	name: Config.name
	collections:
		Posts:
      templates:
        new: 
          name: 'customTemplateName'
        edit: 
          name: 'customTemplateNameEdit'
          data:
            text: 'cool!'
		Comments:
			color: 'green'
			icon: 'comments'
			extraFields: ['doc', 'owner']
			tableColumns: [
				{ label: 'Content', name: 'content' }
				{ label: 'Post', name: 'docTitle()', template: 'adminPostCell' }
				{ label: 'User', name: 'author()', template: 'adminUserCell' }
			]
			children: [
				{
					find: (comment) ->
						Posts.find comment.doc, limit: 1
				}
				{
					find: (comment) ->
						Meteor.users.find comment.owner, limit: 1
				}
			]
	dashboard:
		homeUrl: '/dashboard'
	autoForm:
		omitFields: ['createdAt', 'updatedAt']
