*Aida
aidaPresentationType
	"depending on URL extension it can be #web, #json or #xml"
	| lastPart |
	lastPart := self requestLine requestURI identifierPath last.
	('*.json' match: lastPart) ifTrue: [^#json].
	('*.xml' match: lastPart) ifTrue: [^#xml].
	^#web