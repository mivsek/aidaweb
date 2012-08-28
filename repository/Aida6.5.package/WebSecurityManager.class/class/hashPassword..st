hashing
hashPassword: aString
	"Squeak specific"
	"Returns a hashed string, used to store and compare passwords in a secure way"
	^(SecureHashAlgorithm new 
			hashMessage: (AIDASite convert: aString toCodepage: #UTF8) )
				asString