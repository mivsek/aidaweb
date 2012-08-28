private-identation
ident
	"ident this tag to its level"
	| depth eol|
	eol := ''.
	self shouldIdent & self isNewline not ifTrue: [eol := self eol]. 
	depth := (self identationLevel - self identDepth) max: 0.
	self identDepth: self identationLevel.
	^eol, (String new: depth withAll: Character tab )