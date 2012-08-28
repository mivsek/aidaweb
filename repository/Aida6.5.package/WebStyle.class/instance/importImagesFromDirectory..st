maintenance
importImagesFromDirectory: aDirectoryString
	"reads alss image, converts them to methods and put them in protocol 'imgs'"
	"name of a method is composed from a name of a file: arrow.gif = arrowGif"
	"WebStyle new importImagesFromDirectory: 'imgs/crystalsvg/64' "
	| fnames fname |
	fnames := (SpFilename named: aDirectoryString) directoryContents.
	fnames do: [:each |
		fname := aDirectoryString, (SpFilename named: aDirectoryString) separator asString, each.
		(SpFilename named: fname) isDirectory ifFalse: [self importImageFrom: fname] ]