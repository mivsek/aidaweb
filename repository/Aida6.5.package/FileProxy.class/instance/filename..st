private
filename: aFilename
	filename := aFilename asString.
	self site notNil ifTrue: 
		[filename := filename copyReplaceAll: self site homeDirectory with: ''].