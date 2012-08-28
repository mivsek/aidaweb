private-javascript
javascriptResource
	" /scripts.js , returns all js* methods (alphabetically sorted) concatenated "
	"WebStyle new javascriptResource"
	^self resources at: #javascript ifAbsentPut:
		[WebMethodResource 
			fromMethod: #javascript on: self 
			contentType: 'text/javascript' preferedUrl: '/scripts.js' site: self site].