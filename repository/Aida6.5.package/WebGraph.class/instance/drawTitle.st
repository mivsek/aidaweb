drawing
drawTitle
	| aTitle |
	aTitle:= (self title asComposedText compositionWidth: (self width-40)) centered.
	self graphics add: aTitle at: 20@10