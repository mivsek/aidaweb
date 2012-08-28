views-elements
groupsAndActivityElement
	| e fs |
	e := WebElement new.
	fs := WebFieldSet new legend: 'Groups, activity'.
	fs table width: 1.
	fs cell width: 300; valign: #top; add: self groupsElement. 
	fs newCell width: 500; valign: #top; add: self activityElement.
	fs newCell valign: #top; addLinkTo: self observee text: 'Sessions' view: #sessions.
	^e add: fs; yourself