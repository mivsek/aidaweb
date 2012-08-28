views
viewMain
	| element |
	self	title: #en->'Admin'.
	element := WebElement new.
	^self style pageFrameWith: element title: self title .