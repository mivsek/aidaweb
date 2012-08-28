image snapshot
preImageSnapshot
	"backup previous image on disk"
	"Squeak specific"
	"AIDASite preImageSnapshot"
	| imgFilename imgBckFilename |
	self shallPreSnapshot ifFalse: [^false]. "to avoid multible backups by calls from multiple sites "
	self setLastPreSnapshot. self setLastSnapshot. "to avoid other sites to snapshot"
	Transcript cr; show: 'img backup..'.
	imgFilename := Smalltalk imageName copyReplaceAll: '.image' with: ''.
	imgBckFilename := imgFilename, '-bck'.
	SpEnvironment onWindows not
		ifTrue: [OSProcess waitForCommand: 'cp ', (imgFilename, '.image'), ' ', imgBckFilename, '.image'.
			OSProcess waitForCommand: 'cp ', (imgFilename, '.changes'), ' ', imgBckFilename, '.changes']
		ifFalse: [OSProcess waitForCommand: 'copy /Y ', (imgFilename, '.image'), ' ', imgBckFilename, '.image'.
			OSProcess waitForCommand: 'copy /Y ', (imgFilename, '.changes'), ' ', imgBckFilename, '.changes'].
	Transcript show: 'done, '.
	self resetLastSnapshot. "so that #imageSnapshot will now continue"
