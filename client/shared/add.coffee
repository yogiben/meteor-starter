Template.multiple.events
	'click #addMultiple': () ->
		console.log 'addMultiple'
		words = Session.get 'multiple'
		_.each words, (word)->
			doc = {}
			doc.target = word[0]
			doc.language = Session.get 'language'
			doc.sets = Session.get 'languageAddSets'
			if word.length == 3
				doc.transliteration = word[1]
				doc.source = word[2]
			else
				doc.source = word[1]
			Words.insert doc, (e,r)->
				if e
					alert 'Could not add ' + doc.target '.'
		$('textarea[name="multiple"]').val('')



	'keydown textarea[name="multiple"]': (e,t)->
		if $(e.currentTarget).val() != ''
			multiple = App.parseMultiple $(e.currentTarget).val()
			Session.set 'multiple', multiple
		else
			Session.set 'multiple', []