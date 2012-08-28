adding-removing
changeToPreferredUrl: anObject
 	"remove all existing urls and make this as only one"
	"BEWARE, all old urls will be erased, url references can be breaked! "
	| url |
	url := anObject preferredUrl.
	url isNil ifTrue: [^nil].
	(url size > 1 and: [url first = $/]) ifFalse: [self error: 'preferredUrl must start with / '].
	self removeObject: anObject.
	self defaultUrl: url for: anObject.