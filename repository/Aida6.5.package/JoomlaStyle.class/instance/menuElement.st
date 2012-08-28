layout-general
menuElement
	"just for example, override in your own style subclass! "
 	| menu |
	menu := JoomlaMenu new
		header: 'Main menu';
		addFirstPageWithDescription: 'Introduction';
		addPage: 'Documentation' description: 'Documentation';
		addPage: 'Download' description: 'Download'.
	self app canBeEdited ifTrue:
		[menu addPage: 'Authors' description: 'Authors only'].
	^menu