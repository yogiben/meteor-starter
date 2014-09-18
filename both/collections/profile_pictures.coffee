@ProfilePictures = new FS.Collection("profilePictures",
  stores: [new FS.Store.GridFS("profilePictures")]
)

# @ProfilePictures = new FS.Collection("profilePictures",
#   stores: [new FS.Store.GridFS("profilePictures",
#     transformWrite: (fileObj, readStream, writeStream) ->
#       # Transform the image into a 120x120px image
#       gm(readStream, fileObj.name()).resize("120", "120").stream().pipe writeStream
#       return

#   )]
# )