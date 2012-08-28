private-building
buildTable
	self form initElements. 
	self initTable. "here, not in form! But it will be added to form too"
	self table class: self cssClass. 
	self width notNil ifTrue: [self table width: self width].
	self buildTableHeader.
	self setCollectionFromAspect. "if aspect set instead of colelction directly"
	self sortColumnsIfNessesary.
	self hasFilters 
		ifTrue: [self buildTableFilterRow. self filterRows]
		ifFalse: [self filtered removeAll; addAll: self collection]. "filtered is what is shown, not collection!"
	self buildTableRows.
	self needsSummary ifTrue: [self buildTableSummaryRow].
	self hasPages ifTrue: [self buildPageSelectionRow].
	self registerFormElements.  "registrations of grid form elements"