*Aida
contentsOfEntireFileBinary
	| stream |
	[stream := FileStream oldFileNamed: self filename.
	^stream binary contentsOfEntireFile]
		ensure: [stream close]
