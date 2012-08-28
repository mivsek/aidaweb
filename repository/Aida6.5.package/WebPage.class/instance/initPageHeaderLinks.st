initialize-release
initPageHeaderLinks
	self app isNil ifTrue: [^nil].
	self addMetaContentType: 'text/html; charset=UTF-8'.
	self addTitle: self title. "should be after charset definition! See also #ensureTitleInHeader"
	self addLinkToDefaultFavicon. "that from WebStyle favicon in imgs"
	self addGlobalKeywords. "if any"

" moved to #lateInitPageHeaderLinks to put them at the end, after app specific libraries are also put in header
	self addLinkToScreenStyleSheet: self site style screenCssResource.
	self addLinkToPrintStyleSheet: self site style printCssResource.
	self session isMobile ifTrue: 
		[self addLinkToMobileStyleSheet: self site style mobileCssResource].
	self addLinkToJavascript: self site style javascriptResource.
"