accessing
loginUserText
	"user logged now or in a past"
	| usr |
	usr := self loginUser. 
	usr isNil ifTrue: [^''].
	^usr nameSurname