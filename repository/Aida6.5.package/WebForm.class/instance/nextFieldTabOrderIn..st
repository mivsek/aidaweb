tabulation
nextFieldTabOrderIn: aFormElement
	"next element to tab into"
	| inx |
	self tabOrder isEmpty ifTrue: [^nil].
	inx := self tabOrder indexOf: aFormElement.
	inx = 0 ifTrue: [^self tabOrder first].
	inx = self tabOrder size ifTrue: [^self tabOrder first]. "rotate"
	^self tabOrder at: inx+1