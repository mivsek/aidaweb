private-importing
storeBaseUrl
	"set a base Url in library if entered"
	(self baseUrl isNil or: [self baseUrl isEmpty]) ifTrue: [^nil].
	self library baseUrl: self baseUrl.