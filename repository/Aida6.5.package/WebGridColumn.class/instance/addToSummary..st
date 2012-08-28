private
addToSummary: anObject
	self summaryType = #count ifTrue: [^self summary: self summary + 1].
	self summaryType = #sum ifTrue:
		[^self summary: self summary + (anObject perform: self aspect)]