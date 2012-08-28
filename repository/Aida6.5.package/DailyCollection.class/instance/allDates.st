accessing
allDates
	"all dates on which something exist"
	^self allDays collect: [:each | Date fromDays: each]