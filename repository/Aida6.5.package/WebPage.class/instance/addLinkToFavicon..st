header elements
addLinkToFavicon: aFaviconImageOrUrl
	"favicon (favorites icon). So far only in .ico format!"
	| url |
	url := aFaviconImageOrUrl isString
		ifTrue: [aFaviconImageOrUrl]
		ifFalse: [self site urlResolver fullUrlFor: aFaviconImageOrUrl on: nil].
	self addHeader: 'link' value: 'rel="icon" type="image/x-icon" href="', url, '" '