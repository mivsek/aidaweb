private
cookies
	cookies isNil ifTrue: [self initCookies].
	^cookies