private
addAnchorTo: anUrlString
	| in out anch | 
	anch := (self anchor includes: $#) ifTrue: [''] ifFalse: ['#']. 
	anch := anch, self anchor.
	in := anUrlString readStream. out := WriteStream on: String new.
"
	out nextPutAll: (in upTo: $? ). out nextPutAll: anch. 
	in atEnd ifFalse: [out nextPut: $? . out nextPutAll: in upToEnd].
"
	out nextPutAll: in upToEnd. out nextPutAll: anch.
	^out contents

"(WebLink new anchor: 'activity222') addAnchorTo:	
	'http://biart.eranova.si/object/o7665965.html?view=editActivityName&uuid=1518'
"