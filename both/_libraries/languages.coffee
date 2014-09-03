Languages =
	spanish:
		name: 'Spanish'
		string: 'spanish'
		code: 'es'
		targetName: 'Español'
		transliteration: false
		targetPlaceholder: 'Hola'
	chinese:
		name: 'Chinese'
		string: 'chinese'
		code: 'es'
		targetName: '中文'
		transliteration: true
		targetPlaceholder: '你好'


if Meteor.isClient
	window['Languages'] = Languages
else if Meteor.isServer
	global['Languages'] = Languages