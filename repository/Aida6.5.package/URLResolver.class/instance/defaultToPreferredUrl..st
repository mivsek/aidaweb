adding-removing
defaultToPreferredUrl: anObject
	"Default URL of that object is set to one suggested by its #prefferedUrl method."
	"Existing URLs are preserved, but just default URL used for automatic URL management"
	| url |
	url := anObject preferredUrl.
	url isNil ifTrue: [^nil].
	(url size > 1 and: [url first = $/]) ifFalse: [self error: 'preferredUrl must start with / '].
	self defaultUrl: url for: anObject.