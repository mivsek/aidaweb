*Aida
asSloveneWithoutCircumflexes
	"convert Unicode csz string with ^ (sumniki) to plain ascii csz"
	"'c^s^z^C^S^Z^' convertToSloveneChars asSloveneWithoutCircumflexes"
	^self collect: 
		[:ch | ch asInteger > 127 
			ifTrue:
				[ch = AIDASite charc ifTrue: [$c]
					ifFalse: [ ch  = AIDASite charC ifTrue: [$C]
					ifFalse: [ ch  = AIDASite chars ifTrue: [$s]
					ifFalse: [ ch  = AIDASite charS ifTrue: [$S]
					ifFalse: [ ch  = AIDASite charz ifTrue: [$z] 
					ifFalse: [ ch  = AIDASite charZ ifTrue: [$Z]
					ifFalse: [$- ] ]]]]]
				]
			ifFalse: [ch] ]