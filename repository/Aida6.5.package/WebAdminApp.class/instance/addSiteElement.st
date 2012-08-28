views-elements
addSiteElement
	| e |
	e := WebElement new.
	e cell addText: 'Site name: '. 
	e newCell addInputFieldAspect: #name for: self newSite. e newRow.
	e cell colspan: 2; addRulerSize: 1. e newRow.
	e cell addText: 'Hostname: '. 
	e newCell addInputFieldAspect: #host for: self newSite uriPattern first. e newRow.
	e cell addText: 'IP: '. 
	e newCell addInputFieldAspect: #ip for: self newSite uriPattern first. e newRow.
	e cell addText: 'Port: '. 
	e newCell addInputFieldAspect: #port for: self newSite uriPattern first. e newRow.
	e cell colspan: 2; addRulerSize: 1. e newRow.
	e cell addText: 'Style class: '. 
	e newCell addInputFieldAspect: #styleClass for: self newSite. e newRow.
	e cell colspan: 2; addRulerSize: 1. e newRow.
	e cell addButtonText: 'Add and start a new site'.
	e cell colspan: 2; addRulerSize: 1. e newRow.
	^e.