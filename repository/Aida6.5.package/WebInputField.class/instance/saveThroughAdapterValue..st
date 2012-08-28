private
saveThroughAdapterValue: aValueString
	| vlue |
	aValueString isNil ifTrue: [^nil].  "error?"
	vlue :=  AIDASite convertFromWeb: aValueString on: self session. "ensure unicode!"
	vlue := (WebFormElement autoConvertString:  vlue toObject: self value).
	self value: vlue.