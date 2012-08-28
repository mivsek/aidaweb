accessing
allDates
	"all dates on which something exist"
	^self days keys collect: [:each | Date fromDays: each]