AutoForm.hooks postsForm:
  docToForm: (doc) ->
    doc.sets = ->
    	# _.each $(.)