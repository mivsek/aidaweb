private-subelements
subelement: aWebElement
	"current subelement we are composing on. Similar as for tables"
	^self otherAt: #Subelement put: aWebElement