adding-removing
addType: aTypeString andExtension: anExtensionString
	| exts |
	exts := self mimeTypes at: aTypeString ifAbsentPut: [OrderedCollection new].
	(exts includes: anExtensionString) ifFalse: [exts add: anExtensionString].
	self fileExtensions at: anExtensionString ifAbsentPut: [aTypeString].