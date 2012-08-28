private
acceptInputFromValue: aString
	| vlue |
	aString isNil ifTrue: [^nil].  "error?"
	vlue :=  AIDASite convertFromWeb: aString on: self session. "ensure unicode!"
	vlue := (WebFormElement autoConvertString:  vlue toObject: self value).
	self value: vlue.