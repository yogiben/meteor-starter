getUserInitial = (user)->
	if not user
		'<i class="fa fa-user"></i>'
	else
		if user.username
			user.username.charAt(0).toUpperCase()
		else if user.profile && user.profile.firstName
			user.profile.firstName.charAt(0).toUpperCase()
		else if user.emails[0].address
			user.emails[0].address.charAt(0).toUpperCase()
		else
			'<i class="fa fa-user"></i>'

getUserColor = (_id)->
	if _id
		index = _id.charCodeAt(0) - 48
		UserHelpers.colorPalette[index]

Template.profileThumb.helpers
	profileThumbInitial: (_id) ->
		if typeof Meteor.users != 'undefined'
			user = Meteor.users.findOne({_id:_id})
			html = getUserInitial(user)
			{
				html: html
				color: 'white'
				backgroundColor: getUserColor(_id)
			}