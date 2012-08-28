instance creation
fileToWrite: aFilenameString

	"create a new instance on a specified (empty) file to write. After you fill records attribute with all
	data, call writeToFile method to do actual exporting to this file"

	| instance |
	instance := self new.
	instance filename: aFilenameString asFilename.
	^instance.