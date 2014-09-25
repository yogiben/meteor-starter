@ProfilePictures = new FS.Collection("profilePictures",
	stores: [
		new FS.Store.GridFS("images"),
		new FS.Store.GridFS("thumbs", {
			# transformWrite: (fileObj, readStream, writeStream)-> {
			# 	gm(readStream, fileObj.name()).resize('120', '120').stream().pipe(writeStream);
			# }
		})
	],
	filter: {
		allow: {
			contentTypes: ['image/*']
		}
	}
)