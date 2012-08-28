private
addNewColumn
	self columns add: ((WebGridColumn newOn: self) id: (self columns size + 1))