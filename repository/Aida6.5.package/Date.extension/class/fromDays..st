*Aida
fromDays: anInteger
	"from days since  1jan190,  same as on VisualWorks"
	"Pharo specific!"
	^self julianDayNumber: anInteger + 2415386
