WebTabs are visual selection tool. selected tab is in front, others are back and have url links.
By default an instance have CSS class 'webtabs' and selected tab 'webtabselected"

Usage:
	self addTextBold: 'Selected without link. 
	self addLinkTo: someObject text: 'not-selected with link' view: #view.
	self selected: 1.


Instance Variables:
	selected	<Integer>	which tab is selected. By default is first.

