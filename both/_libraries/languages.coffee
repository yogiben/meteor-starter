Languages =
	spanish:
		name: 'Spanish'
		string: 'spanish'
		code: 'es'
		targetName: 'Español'
		transliteration: false
		placeholder: 'Hola'
		placeholderMultiple: 'Hola - Hello'
	chinese:
		name: 'Chinese'
		string: 'chinese'
		code: 'es'
		targetName: '中文'
		transliteration: true
		placeholder: '你好'
		placeholderMultiple: '你好 - ni2 hao3 - hello'


if Meteor.isClient
	window['Languages'] = Languages
else if Meteor.isServer
	global['Languages'] = Languages