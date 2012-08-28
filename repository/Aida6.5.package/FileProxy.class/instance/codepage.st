accessing
codepage
	" #iso2 by default"
	codepage isNil ifTrue: [self codepage: #'iso-8859-2'].
	^codepage.