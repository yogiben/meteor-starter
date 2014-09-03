Meteor.publish 'user', ->
	Meteor.users.find {_id:@userId}

Meteor.publish 'words', ->
	Words.find {owner:@userId}

Meteor.publish 'sets', ->
	Sets.find {owner:@userId}

Meteor.publish 'tests', ->
	Tests.find {owner:@userId}