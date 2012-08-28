maintenance
importImageFrom: aFilenameString
	"reads an image, converts it to a method and make that method in method protocol 'imgs'"
	"name of a method is composed from a name of a file: arrow.gif = arrowGif"
	"WebStyle new importImageFrom: 'imgs/info.gif' "
	| iname |
	iname := self adjustImageName: (SpFilename named: aFilenameString) tail. 
	self importImage: iname from: aFilenameString