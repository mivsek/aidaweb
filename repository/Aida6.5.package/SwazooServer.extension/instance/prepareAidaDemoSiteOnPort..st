*Aida
prepareAidaDemoSiteOnPort: aNumber
	"this site will run on all IP interfaces on that port"
	| name site |
	name := 'aidaOn', aNumber printString.
	site := AIDASite newNamed: name. "which is now also added to SwazoServer"
	site host: '*' ip: '*' port: aNumber.
	^site