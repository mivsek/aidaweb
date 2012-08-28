private-css
screenCssResource
	" /screen.css , returns all css* methods (alphabetically sorted) concatenated "
	"WebStyle new screenCssResource"
	^self resources at: #cssScreen ifAbsentPut:
		[WebMethodResource 
			fromMethod: #screenStyleSheet on: self 
			contentType: 'text/css' preferedUrl: '/screen.css' site: self site].