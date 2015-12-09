Comments.helpers
  docTitle: ->
    Posts.findOne(@doc)?.title
  author: ->
    user = Meteor.users.findOne(@owner)
    if user?.profile?.firstName? and user?.profile?.lastName
      user.profile.firstName + ' ' + user.profile.lastName
    else
      user?.emails?[0].address
