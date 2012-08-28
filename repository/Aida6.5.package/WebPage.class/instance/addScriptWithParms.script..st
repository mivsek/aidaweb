private
addScriptWithParms: aString script: aScriptString
	self isStreaming ifTrue: [self errorAlreadyInStreamingState]. "too late to add headers in streaming state!"
	self firstContextFromStack event isClassicalRequest 
		ifFalse: [self errorCannotSetHeadersFromAjax]. "because page headers are already sent to browser"
	self headers add: ('script' -> (Array with: aString with: aScriptString) )