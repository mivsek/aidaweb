accessing
randomCharacter
	"from 25 lowercase, 25 upercase, 10 numbers"
	| rnum |
	rnum := (Random new next * 60) truncated.
	rnum <= 25 ifTrue: [^($a asInteger + rnum) asCharacter].
	rnum <= 50 ifTrue: [^($A asInteger + rnum-25) asCharacter].
	^($0 asInteger + rnum-50) asCharacter
