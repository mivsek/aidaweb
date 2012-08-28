accessing
validFields
	"all fields whith a not valid value"
	^self allFields select: [:each | each isValid]