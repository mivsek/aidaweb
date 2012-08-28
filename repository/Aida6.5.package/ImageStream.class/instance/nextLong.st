stream access
nextLong
	^(imageStream next bitShift: 24)
		+ (imageStream next bitShift: 16) + (imageStream next bitShift: 8) + imageStream next