private
capitalizeName: aString
	"make first char uppercase"
	aString isEmpty ifTrue: [^''].
	^(String with: aString first asUppercase), (aString copyFrom: 2 to: aString size)

"WebApplication capitalizeName: 'main' "