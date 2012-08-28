accessing
fullUrlEncodedSpacesFor: anObject on: aSession
	"change spaces to %20"
	^(self fullUrlFor: anObject on: aSession) copyReplaceAll: ' ' with: '%20'