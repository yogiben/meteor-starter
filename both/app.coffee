App = 
	parseMultiple: (text)->
		words = text.split("\n");
		words = _.map words, (word)->
			word = word.replace(' - ','-')
			word = word.split('-')
		words = _.filter words, (word)->
			word.length == 3 or word.length == 2
		words

if Meteor.isClient
	window['App'] = App
else if Meteor.isServer
	global['App'] = App