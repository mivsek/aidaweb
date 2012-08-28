private
addArray: aFirstArray to: aSecondArray

	1 to: aFirstArray size do: [:index |
		aSecondArray
			at: index
			put: (aFirstArray at: index) + (aSecondArray at: index)]