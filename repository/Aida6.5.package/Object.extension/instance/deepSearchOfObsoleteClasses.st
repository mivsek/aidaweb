*Aida
deepSearchOfObsoleteClasses
	"find all objects of obsolete classes down in object hierarchy"
	| objectDictionary |
	objectDictionary := IdentityDictionary new.
	self aidaDeepCopyNotIn: objectDictionary.
	^ objectDictionary keys select: [ :each | each class isObsolete ]