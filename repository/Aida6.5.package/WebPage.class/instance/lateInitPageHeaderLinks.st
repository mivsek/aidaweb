initialize-release
lateInitPageHeaderLinks
	"To put them at the end, after app specific libraries are also put in header, they are put in header just
	 before streaming phase begins"
	self app isNil ifTrue: [^nil].
	self addLinkToScreenStyleSheet: self site style screenCssResource.
	self addLinkToPrintStyleSheet: self site style printCssResource.
	self session isMobile ifTrue:  "as cascaded extension of screen CSS!"
		[self addLinkToMobileStyleSheet: self site style mobileCssResource].
	self addLinkToJavascript: self site style javascriptResource.