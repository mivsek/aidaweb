private
autoUrlFor: anObject
	"use preferred url if possible. If that url already exist, add -a, -b, ... to url and repeat"
	| url extension lastPoint |
	url := anObject preferredUrl. url isNil ifTrue: [^self randomUrlFor: anObject].
	(url size >= 1 and: [url first = $/]) ifFalse: [self error: 'preferredUrl must start with / '].
	[(self objectOnUrl: url) notNil] whileTrue: "already exist"
		[lastPoint := url lastIndexOf: $. . lastPoint = 0 ifTrue: [lastPoint := url size+1].
		extension := url copyFrom: lastPoint to: url size.
		url := url copyReplaceAll: extension with: ''. 
		url isEmpty ifTrue:  [^self randomUrlFor: anObject].
		(url size > 1 and: [(url at: url size-1) = $-]) "already have an extension char!"
			ifTrue: 
				[url last = $z ifTrue: [^self randomUrlFor: anObject]. "only to $z, then back to random!"
				url := (url copyFrom: 1 to: url size-1), (String with: (url last asInteger + 1) asCharacter)]
			ifFalse: [url := url, '-a'].
		url := url, extension].
	^url

"URLResolver default halfUrlFor: (Document new id: 'SOP-0111-02').
URLResolver default autoUrlFor: (Document new id: 'SOP-0111-02')"