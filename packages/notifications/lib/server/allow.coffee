Notifications.allow
  insert: (userId, doc) ->
    doc.owner == userId
  update: (userId, doc, fieldNames, modifier) ->
    doc.owner == userId && fieldNames.length == 1 && fieldNames[0] == 'read'
  remove: (userId, doc) ->
    doc.owner == userId
