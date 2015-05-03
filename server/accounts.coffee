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

	if not profileImageUrl
		# Try and get via Gravatar
		# Gravatar currently always returns an image, whether the user set one or not.
		# It's possible to set {default: 404} and then detect a 404 status via HTTP request
		# This could increase the time needed to create a new user so it's avoided for now
		#
		# TODO: Set default profile picture in config. If 'null' then field is left blank

		email = user.emails?[0]?.address or ''
		profileImageUrl = Gravatar.imageUrl email, {default: 'identicon'}
	
	console.log 'PROFILE IMAGE URL'
	console.log profileImageUrl

	if  profileImageUrl
		picture = new FS.File()
		attachData = Meteor.wrapAsync picture.attachData, picture
		attachData profileImageUrl
		picture.name('picture ' + user._id + '.png')
		profilePicture = ProfilePictures.insert picture
		user.profile.picture = profilePicture._id

	console.log user
	user
