maintenance
importImage: aName from: aFilenameString
	"reads an image, converts it to a method named aName and make that method in 
       method protocol 'imgs'"
	"WebStyle new importImage: 'infoGif' from: 'imgs/info.gif' "
	| fname method |
	fname := (SpFilename named: aFilenameString).
	method := fname contentsAsMethod.
	method := aName, (String with: Character cr), method.
	self class compile: method classified: 'imgs'