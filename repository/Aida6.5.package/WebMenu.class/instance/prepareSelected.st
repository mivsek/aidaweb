private-streaming
prepareSelected
	"add aspect of objectToStore selected result. There a preselection can reside"
	self aspectToStore isNil ifTrue: [^nil]. "multiple selections used, selected already set"
	self selected: (Set with: self adaptorToStore value)