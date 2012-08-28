private-subelements
registerFormElementsTo: aWebForm
	"find form elements down in element hierachy and register them in an apropriate 
       form (from page, popup window or widget). Also setup the form hierarchy"
	| form |
	form := (self isWebForm and: [self ~= aWebForm])  "another form found, change to it as a registration target"
		ifTrue: [aWebForm addSubform: self. self] 
		ifFalse: [aWebForm].
	self isFormElement ifTrue: [form registerFormElement: self].
	self elements do: [:subelement |
		subelement registerFormElementsTo: form]