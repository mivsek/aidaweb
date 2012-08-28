private
removeLastColumn
	self columns notEmpty ifTrue: [self columns remove: self lastColumn].