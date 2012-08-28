*Aida
contextId
	"unique id of the web context this request is executing. May be in query part or post data"
	| id |
	id := self queryAt: WebContext contextIdName "aidaCtx" ifAbsent: [nil].
	id notNil ifTrue: [^id asInteger].
	^self isPost 
		ifTrue: [(self postDataAt: WebContext contextIdName ifAbsent: [^nil]) value asInteger]
		ifFalse: [nil]