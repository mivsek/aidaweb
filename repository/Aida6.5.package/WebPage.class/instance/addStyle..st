header elements
addStyle: aString
	"inline CSS to header of a page. It will be always the last in the header, after /screen.css, to allow overriding it"
	self isStreaming ifTrue: [self errorAlreadyInStreamingState]. "too late to add headers in streaming state!"
	self firstContextFromStack event isClassicalRequest 
		ifFalse: [self errorCannotSetHeadersFromAjax]. "because page headers are already sent to browser"
	self headers add: ('style' -> (Array with: 'type="text/css"' with: aString) ).
	"see also #rearrangeHeaders called from #streamHtmlTo:..  "