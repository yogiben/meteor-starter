Schemas = {}

Schemas.UserLanguageSettings = new SimpleSchema(
  name:
    type: String
)

Schemas.UserProfile = new SimpleSchema(
  firstName:
    type: String
    optional: true

  lastName:
    type: String
    optional: true
)

Schemas.User = new SimpleSchema(
  username:
    type: String
    max: 50

  emails:
    type: [Object]

  "emails.$.address":
    type: String
    regEx: SimpleSchema.RegEx.Email

  "emails.$.verified":
    type: Boolean

  createdAt:
    type: Date

  profile:
    type: Schemas.UserProfile
    optional: true

  learning:
    type: [String]
    optional: true

  services:
    type: Object
    optional: true
    blackbox: true

  roles:
    type: [String]
    blackbox: true
    optional: true
)

Meteor.users.attachSchema Schemas.User
