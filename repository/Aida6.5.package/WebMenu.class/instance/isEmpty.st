testing
isEmpty
	"input field is empty or nil"
	| vlue |
	self objectToStore notNil ifTrue: [vlue := self objectToStore perform: self aspectToStore].
	^vlue isNil 
		or: [((vlue isKindOf: String) and: [vlue isEmpty])
			or: [(vlue isKindOf: Number) and: [vlue = 0] ]]