testing
isEmpty
	"input field is empty or nil"
	| vlue |
	vlue := self object perform: self aspect.
	^vlue isNil 
		or: [((vlue isKindOf: String) and: [vlue isEmpty])
			or: [(vlue isKindOf: Number) and: [vlue = 0] ]]