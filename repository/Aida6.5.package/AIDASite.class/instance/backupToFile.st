private-backup/restore
backupToFile
	"file out all object tree to file aidasite-<sitename>.obj"
	"(AIDASite named: 'biart') backupToFile"
	"(AIDASite named: 'biart') deepSearchOfClass: 'ObsoleteIntranet'"
	"(AIDASite named: 'biart') deepSearchOfObsoleteClasses"
	| filename fileDir |
	filename := 'aidasite-', self name, '.obj'.
	fileDir := FileDirectory forFileName: filename.
	(fileDir fileExists: filename) ifTrue: 
		[fileDir copyFileWithoutOverwriteConfirmationNamed: filename toFileNamed: ('aidasite-', self name, '-old.obj')].
	(FileStream fileNamed: filename)
		fileOutClass: nil andObject: self