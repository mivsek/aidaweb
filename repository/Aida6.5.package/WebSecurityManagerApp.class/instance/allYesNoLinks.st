printing-access control
allYesNoLinks
	| e |
	e := WebElement new.
	e
		addText: 'all views: ';
		addLinkTo: self observee text: ' YES ' view: #aclObject parameter: 'allViews' value: 'YES';
		add: ((WebLink text: ' NO ' linkTo: self observee)
			view: #aclObject;
			parameter: 'allViews' value: 'NO');
		addText: 'all updates: ';
		add: ((WebLink text: ' YES ' linkTo: self observee)
			view: #aclObject;
			parameter: 'allUpdates' value: 'YES');
		add: ((WebLink text: ' NO ' linkTo: self observee)
			view: #aclObject;
			parameter: 'allUpdates' value: 'NO');
		addText: 'all encrypted: ';
		add: ((WebLink text: ' YES ' linkTo: self observee)
			view: #aclObject;
			parameter: 'allEncrypted' value: 'YES');
		add: ((WebLink text: ' NO ' linkTo: self observee)
			view:  #aclObject;
			parameter: 'allEncrypted' value: 'NO').
	^e