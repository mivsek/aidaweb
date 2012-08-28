views
viewLiveImage
	| e |
	self liveImage isNil ifTrue: [self liveImage: WebGraph new].  "subclass WebLiveImage"
	e := WebElement new.
	e addTextH1: 'Live image example'. e addBreak.
	e addImage: self liveImage.
	self style pageFrameWith: e title: 'Live image example'