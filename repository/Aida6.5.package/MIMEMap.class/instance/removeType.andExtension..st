adding-removing
removeType: aTypeString andExtension: anExtensionString
	| exts |
	exts := self mimeTypes at: aTypeString ifAbsent: [OrderedCollection new].
	(exts includes: anExtensionString) ifTrue: [exts remove: anExtensionString].
	exts isEmpty ifTrue: [self mimeTypes removeKey: aTypeString ifAbsent: [] ].
	self fileExtensions removeKey: anExtensionString ifAbsent: [].