*Aida
isValidEMailAddress
	(self includes: $@) ifFalse: [^false].
	^(self trimBlanks contains: [:char | 
		char isAlphaNumeric not and: [(#($. $- $_  $@) includes: char) not] ]) not

" 'janko.mivsek@eranova.si' isValidEMailAddress"