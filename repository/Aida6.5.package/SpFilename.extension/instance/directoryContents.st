*Aida
directoryContents
	| entries |
	entries := FileDirectory new directoryContentsFor: (self asAbsoluteFilename filename).
	^entries collect: [:each | each name]