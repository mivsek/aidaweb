accessing
view: aSymbol
	"view on which context is executed. #main is default"
	view := aSymbol isNil 
		ifTrue: [#main] 
		ifFalse: [aSymbol]