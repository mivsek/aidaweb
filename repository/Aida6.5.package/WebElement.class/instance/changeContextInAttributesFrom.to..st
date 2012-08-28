private-ajax
changeContextInAttributesFrom: oldCtx to: newCtx
	"scan for all references to contexts and change them"
	| attrToChange |
	self attributes isNil ifTrue: [^nil].
	attrToChange := #( #onClick #onDblClick #onKeyDown #onKeyPress #onKeyUp 
		#onMouseDown #onMouseMove #onMouseOut #onMouseOver #onMouseUp 
		#onSelect #onFocus #onChange #onSubmit #onReset).
	(self attributes associations select: [:each | attrToChange includes: each key]) do: [:assoc |
		assoc value class = OrderedCollection
			ifTrue: [self attributesAt: assoc key put: 
					(assoc value collect: [:each | self changeContextInAttribute: each from: oldCtx to: newCtx]) ]
			ifFalse: [self attributesAt: assoc key put: (self changeContextInAttribute: assoc value from: oldCtx to: newCtx)] ].