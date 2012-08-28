private-identation
identMore
	"ident inside tag content to its level and one deepier"
	self isNewline ifFalse: [self eol]. 
	self identDepth: self identationLevel+1.
	^String new: self identationLevel+1 withAll: $ 