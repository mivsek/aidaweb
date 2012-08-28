instance creation
new
	^super basicNew
		initialize; "also build"
		creationMethod: #ajaxUpdateWith:  "this method will be called after ajax update"