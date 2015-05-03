Meteor.publishComposite 'user', ->
  find: ->
    Meteor.users.find _id: @userId
  children: [
    find: (user) ->
      console.log user
      _id = user.profile.picture or null
      console.log _id
      ProfilePictures.find _id: _id
    ]