accessing
forApp: anApp view: aSymbol put: aWebHelpPage
	| appName |
	appName := (anApp isKindOf: WebApplication) ifTrue: [anApp class name] ifFalse: [anApp].
	(self pages at: appName ifAbsentPut: [Dictionary new]) at: aSymbol asSymbol put: aWebHelpPage