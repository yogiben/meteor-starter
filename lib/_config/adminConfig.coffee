@AdminConfig =
	name: Config.name
	collections : 
		Posts: {
			color: 'red'
			icon: 'pencil'
			auxCollections: ['Attachments', 'Users']
			tableColumns: [
              {label: 'Title', name:'title'}
              {label: 'User', name:'owner', collection:'Users'}
            ]
		}
		Comments: {
			color: 'green'
			icon: 'comments'
			auxCollections: ['Posts', 'Users']
			tableColumns: [
              {label: 'Content', name: 'content'}
              {label: 'Post', name:'doc', collection: 'Posts', collection_property: 'title'}
              {label: 'User', name:'owner', collection:'Users'}
            ]
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
	autoForm: 
	        omitFields: ['createdAt', 'updatedAt']
