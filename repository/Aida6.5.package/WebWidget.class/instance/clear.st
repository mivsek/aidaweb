views
clear
	self initElements.
	self clearTableInfo.
	self initScripts.
	self initForm.
	(self parent notNil and: [self parent form notNil]) ifTrue:
		[self parent form addSubform: self form]