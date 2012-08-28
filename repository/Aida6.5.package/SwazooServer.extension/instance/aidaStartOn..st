*Aida
aidaStartOn: aPortNumber
	| site |
	site := self siteAnyHostAllInterfacesOnPort: aPortNumber.
	site isNil ifTrue: [site := self prepareAidaDemoSiteOnPort: aPortNumber].
	site start.
	^site