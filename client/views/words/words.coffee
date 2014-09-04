AutoForm.hooks add:
  formToDoc: (doc) ->
    doc.sets = Session.get('languageAddSets')
    doc