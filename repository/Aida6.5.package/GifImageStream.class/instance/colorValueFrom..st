private
colorValueFrom: rgbInteger 
	| scalingValue |
	scalingValue := ColorValue scalingValue.
	^ColorValue
		scaledRed: (self
				convertValue: ((rgbInteger bitShift: -16)
						bitAnd: 255)
				from: 255
				to: scalingValue)
		scaledGreen: (self
				convertValue: ((rgbInteger bitShift: -8)
						bitAnd: 255)
				from: 255
				to: scalingValue)
		scaledBlue: (self
				convertValue: (rgbInteger bitAnd: 255)
				from: 255
				to: scalingValue)