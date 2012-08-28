log analysis
dateFromFilename: aFilename

	^SpDate 
		newDay: (aFilename tail copyFrom: 7 to: 8) asInteger
		month:(aFilename tail copyFrom: 5 to: 6) asInteger
		year: ((aFilename tail copyFrom: 3 to: 4) asInteger + 2000)