accessing
codepage
	codepage isNil ifTrue: [self codepage: self defaultCodepage].
	^codepage