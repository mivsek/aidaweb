*Aida
ajaxElementId
	"Asynchronous JavaScript (AJAX) request, it has additional parameter ajaxGetElementId, 
       usually used to identify an element to update"
	| id |
	id := self queryAt: 'ajaxGetElementId' ifAbsent: [nil].
	id notNil ifTrue: [^id asSymbol].
	^self isPost 
		ifTrue: [(self postDataAt: 'ajaxGetElementId' ifAbsent: [^nil]) value asSymbol]
		ifFalse: [nil]
