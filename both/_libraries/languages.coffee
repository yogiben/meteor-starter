Languages =
	spanish:
		name: 'Spanish'
		code: 'es'
		targetName: 'Español'
		transliteration: false
	chinese:
		name: 'Chinese'
		code: 'es'
		targetName: '中文'
		transliteration: true


if Meteor.isClient
	window['Languages'] = Languages
else if Meteor.isServer
	global['Languages'] = Languages