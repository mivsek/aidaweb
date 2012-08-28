views
viewServerRuns
	| e inx runs |
	self site setLastTimeAliveTimestamp.
	self	title: 'Runs for site: ', self site name.
	e := WebElement new.
	e table width: self style pageContentWidth. e cell color: #yellow.
	e cell colspan: 6; addText: self title header: 3. e newRow color: #thistle.
	e cell align: #center; addText: 'nr '.
	e newCell align: #center; addText: 'started '. e newCell align: #center; addText: 'last time alive '.
	e newCell align: #center; addText: 'uptime'. e newCell align: #center; addText: 'downtime'.
	e newCell align: #center; addText: 'termination'. e newRow.
	inx := 1. runs := self site runningHistory.
	runs do: [:array |
		inx even ifTrue: [e row color: #silver].
		e cell align: #center; addText: inx printString.
		e newCell align: #right; addText: (array at: 1) printSloString.
		e newCell align: #right; addText: (array at: 2) printSloString.
		e newCell align: #right; addText: (self printSeconds: (array at: 3) ).
		e newCell align: #right; addText: (self printSeconds: (array at: 4) ).
		e newCell align: #center; addText: 
			(array == runs last ifTrue: ['running'] ifFalse: [(array at: 5) ifTrue: ['crashed'] ifFalse: ['normal']]).
		inx := inx + 1. e newRow].
	e cell colspan: 6; addRulerSize: 1.
	^self style pageFrameWith: e title: self title .