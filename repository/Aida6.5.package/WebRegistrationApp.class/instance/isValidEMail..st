validation
isValidEMail: aString
	(aString includes: $@) ifFalse: [^false].
	^true