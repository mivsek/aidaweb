*Aida
aidaPresenterFor: aRequest on: aSession 
	"find appropriate web application or other presenter to represent itself"
	| ptype presenter |
	ptype := aRequest aidaPresentationType. "#web, #json, #xml"
	ptype = #web ifTrue:
		[presenter := self aidaWebAppFor: aSession.
		presenter notNil ifTrue: [^presenter composeWebPageFor: aRequest]].
	ptype = #json ifTrue:
		[^WebJSONPresenter newFor: self on: aSession].
	^self asWebAppNotFoundFor: aSession