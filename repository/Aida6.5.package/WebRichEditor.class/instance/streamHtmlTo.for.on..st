private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
"	aRequest isAjaxRequest ifTrue:
		[self scriptBefore: self class richEditorInitScript]." "otherwise it won't show in Ajax update"
	self scriptBefore: self initScript. "for every editor instance, is that good? "
	^super streamHtmlTo: aStream for: aRequest on: aSession