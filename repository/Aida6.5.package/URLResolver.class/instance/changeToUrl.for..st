adding-removing
changeToUrl: aString for: anObject
 	"remove all existing urls and make this as only one"
	"BEWARE, all ols urls will be erased, url references can be breaked! "
	self removeObject: anObject.
	self defaultUrl: aString for: anObject.