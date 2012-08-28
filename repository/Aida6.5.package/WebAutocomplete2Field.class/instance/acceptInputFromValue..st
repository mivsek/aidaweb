private
acceptInputFromValue: aValueString
	| vlue choices |
	vlue :=  AIDASite convertFromWeb: aValueString on: self session. "ensure unicode!"
	vlue := (WebFormElement autoConvertString:  vlue toObject: self value).
	self choicesObject notNil & self choiceAspect notNil ifTrue: "save real object, not only text! "
		[choices := self choicesObject perform: self choicesAspect.
		vlue := choices detect: [:each | (each perform: self choiceAspect) = vlue] ifNone: [nil] ].
	self value: vlue.