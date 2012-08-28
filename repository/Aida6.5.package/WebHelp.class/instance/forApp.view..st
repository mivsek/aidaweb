accessing
forApp: anApp view: aSymbol
	| appName |
	appName := (anApp isKindOf: WebApplication) ifTrue: [anApp class name] ifFalse: [anApp].
	^(self pages at: appName ifAbsent: [^nil]) at: aSymbol asSymbol ifAbsent: [nil]