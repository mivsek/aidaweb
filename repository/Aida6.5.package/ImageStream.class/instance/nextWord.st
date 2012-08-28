stream access
nextWord
	^(imageStream next bitShift: 8)
		+ imageStream next