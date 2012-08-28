private-css
mobileCssResource
	" /mobile.css , returns all cssMobile* methods (alphabetically sorted) concatenated "
	"WebStyle new mobileCssResource"
	^self resources at: #cssMobile ifAbsentPut:
		[WebMethodResource 
			fromMethod: #mobileStyleSheet on: self 
			contentType: 'text/css' preferedUrl: '/mobile.css' site: self site].