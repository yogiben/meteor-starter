Accounts.onCreateUser (options, user) ->
	profileImageUrl = undefined
	user.profile = user.profile or {}

	if user.services?.facebook
		user.emails = [{address: user.services.facebook.email, verified: true}]
		user.profile.firstName = user.services.facebook.first_name
		user.profile.lastName = user.services.facebook.last_name
	if user.services?.google
		user.emails = [{address: user.services.google.email, verified: true}]
		user.profile.firstName = user.services.google.given_name
		user.profile.lastName = user.services.google.family_name
	# TODO: twitter email, first name and last name

	if user.services?.facebook?.id
		profileImageUrl = 'https://graph.facebook.com/v2.3/' + user.services.facebook.id + '/picture?type=normal'
	if user.services?.google?.id
		profileImageUrl = user.services.google.picture
	if user.services?.twitter?.id
		profileImageUrl = user.services.twitter.profile_image_url
	
	if profileImageUrl
		picture = new FS.File()
		attachData = Meteor.wrapAsync picture.attachData, picture

		attachData profileImageUrl
		picture.name('picture' + user._id)
		profilePicture = ProfilePictures.insert picture
		user.profile.picture = profilePicture._id
	else
		email = user.emails?[0]?.address or ''
		url = Gravatar.imageUrl email
		user.profile.picture =  url
	user
