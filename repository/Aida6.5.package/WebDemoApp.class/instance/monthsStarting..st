views-ajax
monthsStarting: aString
	"as choicesAspect for autocompletion demo"
	"WebDemoApp new monthsStarting: 'j' "
	| months |
	months := 
		#('januar' 'prosinec' 'sijec^anj' 'January' 
		   'februar', 'svec^an' 'veljac^a' 'February'
		   'marec', 'sus^ec' 'oz^ujak' 'Mart'
		   'april', 'mali traven' 'travanj' 'April'
		   'maj', 'veliki traven' 'svibanj' 'May'
		   'junij', 'roz^nik' 'lipanj' 'June'
		   'julij', 'mali srpen' 'srpanj' 'July'
		   'avgust', 'veliki srpen' 'kolovoz' 'August'
		   'september', 'kimavec' 'rujan' 'September'
		   'oktober', 'vinotok' 'listopad' 'October'
		   'november', 'listopad' 'studeni' 'November'
		   'december', 'gruden' 'prosinac' 'December').
	^months select: [:each | aString, '*' match: each]