private
addHeader: aTagString value: aString
	| event |
	self isStreaming ifTrue: [self errorAlreadyInStreamingState]. "too late to add headers in streaming state!"
	event := self firstContextFromStack event.
	event isClassicalRequest 
		ifFalse: [self errorCannotSetHeadersFromAjax]. "because page headers are already sent to browser"
	self headers add: (aTagString -> aString)