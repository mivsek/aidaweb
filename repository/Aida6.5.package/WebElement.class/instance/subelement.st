private-subelements
subelement
	"current subelement we are composing on. Similar as for tables"
	^self otherAt: #Subelement ifAbsent: [nil]