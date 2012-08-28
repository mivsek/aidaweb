private
emailAddressFor: aPersonOrCollection
	"one or more email addresses, separated with comma"
	| collection |
	(aPersonOrCollection isKindOf: String) ifTrue: [^(self adapt: aPersonOrCollection)].
	collection := (aPersonOrCollection isKindOf: Collection) 
		ifTrue: [aPersonOrCollection] ifFalse: [Array with: aPersonOrCollection].
	collection := collection select: [:each | each notNil and: [each email isValidEMailAddress]].
	collection isEmpty ifTrue: [^'User has no email! <info@eranova.si>'].
	^self adapt: (collection inject: '' into: [:string :each |    "no full name, just plain address! "
				(string = '' ifTrue: [''] ifFalse: [string, ', ']), each email])
"	^self adapt: (collection inject: '' into: [:string :each |
				(string = '' ifTrue: [''] ifFalse: [string, ', ']), '""', each nameSurname, '"" <', each email, '>'])
					ensureUnicodeSloveneChars
"