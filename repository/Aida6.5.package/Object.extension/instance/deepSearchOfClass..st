*Aida
deepSearchOfClass: aClassName 
	"finf all objects of that class down in object hierarchy"
	| objectDictionary class |
	objectDictionary := IdentityDictionary new.
	self aidaDeepCopyNotIn: objectDictionary.
	class := aClassName asSymbol.
	^ objectDictionary keys select: [ :each | each class name = class ]