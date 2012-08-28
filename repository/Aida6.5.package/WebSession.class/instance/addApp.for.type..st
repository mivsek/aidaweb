private-app state
addApp: anApplication for: anObject type: aSymbol
	"web or wap apps, type can be #web or #wap "
	| objDict |
	objDict := self appsForObjects at: anObject ifAbsentPut: [Dictionary new].
	^objDict at: aSymbol put: anApplication