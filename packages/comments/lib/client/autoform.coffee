AutoForm.hooks commentForm:
  onError: (operation, error, template) ->
  	sAlert.error error

  formToDoc: (doc, ss, formId) ->
  	doc.doc = Template.instance().data.commentDocId
  	doc.owner = Meteor.userId()
  	doc