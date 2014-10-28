@ProfilePictures = new FS.Collection("profilePictures",
	stores: [
		new FS.Store.GridFS("images", {

			transformWrite: (fileObj, readStream, writeStream)->
				if gm.isAvailable
					gm(readStream, fileObj.name()).autoOrient().stream().pipe(writeStream)
				else
					readStream.pipe(writeStream)
		}),
		new FS.Store.GridFS("thumbs", {

			transformWrite: (fileObj, readStream, writeStream)->
				if gm.isAvailable
					size = {width: 100, height: 100}
					gm(readStream, fileObj.name()).autoOrient().resize(size.width + "^>", size.height + "^>").gravity("Center").extent(size.width, size.height).stream().pipe(writeStream)
				else
					readStream.pipe(writeStream)
		})
	],
	filter: {
		allow: {
			contentTypes: ['image/*']
		}
	}
)