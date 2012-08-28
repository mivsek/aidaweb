printing-elements
filtersElement
	| e |
	e := WebElement new. e table width: 1.
	e cell colspan: 2; addText: 'Only user Admin allowed to change filters!'. e newRow.
	e newRow. e newRow.
	e cell width: 0.3; valign: #top; addText: 'IP addresses, allowed to login: <br> <small>(one IP per line, no commas, patterns with * allowed, like 188.45.34.* )</small>'.
	(e newCell addTextAreaAspect: #allowedIPs for: self size: 20@4)
		onChangePost.
	^e