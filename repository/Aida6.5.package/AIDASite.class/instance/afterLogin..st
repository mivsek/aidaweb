settings
afterLogin: aStringOrSymbol
	"1. url of page to jump"
	"2. #lastPage - back to a page before logout"
	"3. #myPage - to user's personal page, if exists"
	((aStringOrSymbol isKindOf: String) not and: 
		[(#(#lastPage #myPage) includes: aStringOrSymbol) not])
			ifTrue: [self error: 'wrong login argument'].
	self settings  at: #afterLogin put: aStringOrSymbol