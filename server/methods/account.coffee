# Meteor.methods
# 	'updatePassword': (doc)->
# 		console.log doc

# 		console.log 'updating password'

# 		r =
# 			success: false

# 		if doc.new != doc.confirm
# 			console.log 'passwords do not match'
# 			new Meteor.Error 500, 'Passwords do not match'

# 		return 'hi'