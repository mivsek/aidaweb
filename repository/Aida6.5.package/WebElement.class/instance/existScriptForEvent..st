private-events
existScriptForEvent: anEventString
	| eventPattern |
	eventPattern := '*aidaEvent(''', anEventString, '*'.
	self attributes isNil ifTrue: [^false].
	self attributes associationsDo: [:attribute |
		attribute value class = OrderedCollection
			ifFalse: [(eventPattern match: attribute value) ifTrue: [^true]]
			ifTrue: [(attribute value contains: [:attr | eventPattern match: attr]) ifTrue: [^true] ] ].
	^false