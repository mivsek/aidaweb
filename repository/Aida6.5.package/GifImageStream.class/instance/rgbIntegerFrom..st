private
rgbIntegerFrom: aColorValue 
	| scalingValue |
	scalingValue := ColorValue scalingValue.
	^((self
		convertValue: aColorValue scaledRed
		from: scalingValue
		to: 255)
		bitShift: 16)
		+ ((self
				convertValue: aColorValue scaledGreen
				from: scalingValue
				to: 255)
				bitShift: 8) + (self
			convertValue: aColorValue scaledBlue
			from: scalingValue
			to: 255)