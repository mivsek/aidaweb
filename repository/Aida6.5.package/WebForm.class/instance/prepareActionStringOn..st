private-streaming
prepareActionStringOn: aSession
	"example of action string:  '/object.html?view=edit&aidaCtx=70413#anchor123"
	| actionString upToAnchor anchor ctx |
	actionString :=  (self action notNil 
		ifTrue: [self action "predefined action" ] ifFalse: [aSession fullUrlForCurrentPage]).
	upToAnchor := actionString readStream upTo: $#.
	anchor := actionString readStream upTo: $#; upToEnd.
	ctx := self context.
	actionString := upToAnchor, ((actionString includes: $? ) ifTrue: ['&'] ifFalse: ['?']),
		(ctx notNil ifTrue: [WebContext contextIdName "aidaCtx", '=', self context id printString] ifFalse: ['']).
	anchor notEmpty ifTrue: [actionString := actionString, '#', anchor]. "anchor always at the end!"
	^actionString