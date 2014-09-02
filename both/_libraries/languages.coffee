Languages =
	es:
		name: 'Spanish'
		targetName: 'Español'
		transliteration: false
	zh:
		name: 'Chinese'
		targetName: '中文'
		transliteration: true


if Meteor.isClient
	window['Languages'] = Languages
else if Meteor.isServer
	global['Languages'] = Languages