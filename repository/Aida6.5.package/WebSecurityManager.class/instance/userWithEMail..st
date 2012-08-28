user management
userWithEMail: aString
	" find and return a WebUser with specified email. Return nil if not found" 
	(aString ~= '') ifFalse: [^nil]. 
	^self users detect: [:user | user email asLowercase = aString asLowercase ] ifNone: [^nil]