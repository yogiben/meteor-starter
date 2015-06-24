Notifications.after.insert (userId, doc, fieldNames, modifier, options) ->

  if doc.services.email
    email = _.defaults doc.services.email,
      from: Config.emails.from
      to: Meteor.users.findOne().email()
      subject: doc.title
      heading: doc.title

    template = if doc.buttonTest and doc.buttonUrl then 'call-to-action' else 'basic'

    PrettyEmail.send template,
      email