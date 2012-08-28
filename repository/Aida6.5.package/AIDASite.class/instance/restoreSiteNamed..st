private-backup/restore
restoreSiteNamed: aString
	"boss in from file aidasite-<sitename>.obj"
	"AIDASite new restoreSiteNamed: 'test' "
	| filename site |
	filename := 'aidasite-', aString, '.obj'.
	site := (FileStream fileNamed: filename) fileInObjectAndCode.
	^site