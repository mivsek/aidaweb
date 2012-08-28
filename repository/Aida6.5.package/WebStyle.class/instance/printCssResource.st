private-css
printCssResource
	" /print.css , returns all cssPrint* methods (alphabetically sorted) concatenated "
	"WebStyle new printCssResource"
	^self resources at: #cssPrint ifAbsentPut:
		[WebMethodResource 
			fromMethod: #printStyleSheet on: self 
			contentType: 'text/css' preferedUrl: '/print.css' site: self site].