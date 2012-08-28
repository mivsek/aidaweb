parsing
makeAbsoluteImgTags
	"if image url's are relative, make them absolute. Also do it for a body tag (background image). 
	Url is constructed from a imageServer address from WebServer settings, and from filename with 	homeDirectory substracted. "
	| fname urlStart index tag bodyTag |
	fname := (self filename asString) copyReplaceAll: (self site homeDirectory) with: ''.
	fname := fname copyFrom: 1 to: (fname lastIndexOf: (AIDASite slash at: 1)).
	urlStart := 'http://', self site host, (fname copyReplaceAll: '\' with: '/').
	self imgTagIndexes do: [:inx  | tag := self elements at: inx.
		('*http://*' match: tag) ifFalse:    "not an absolute source url"
			[self elements at: inx put: (self absoluteTagFrom: tag urlStart: urlStart)] ].
	self bodyTagIndex notNil ifTrue:
		[bodyTag := self elements at: bodyTagIndex.
		(('*background*' match:  bodyTag) and: [('*http://*' match:  bodyTag) not]) 
			ifTrue: 
				[index := bodyTag asLowercase findString: 'background' startingAt: 1.
				index := bodyTag findString: '"' startingAt: index.
				(( bodyTag at: index+1) = $#) ifTrue: [^self]. "only colored background"
				self elements at: bodyTagIndex put:
					((bodyTag copyFrom: 1 to: index), urlStart, 
						(bodyTag copyFrom: index + 1 to: bodyTag size)) ] ].