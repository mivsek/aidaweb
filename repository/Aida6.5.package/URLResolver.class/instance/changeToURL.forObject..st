adding-removing
changeToURL: aString forObject: anObject
 	"remove all existing urls and make this as only one"
	"BEWARE, all ols urls will be erased, url references can be breaked! "
	self removeObject: anObject.
	self defaultURL: aString forObject: anObject.