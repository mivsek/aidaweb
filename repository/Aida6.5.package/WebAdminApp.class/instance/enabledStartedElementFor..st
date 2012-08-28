views-sites
enabledStartedElementFor: aSite
	"Ajax toggle enable/disable and start/stop in sitesElement "
	| e  |
	e := WebElement new. e table width: 1.
	(e cell addNilLinkText: (aSite isEnabled ifTrue: ['enabled'] ifFalse: ['disabled']) )
		title: (aSite isEnabled ifTrue: ['Click to disable this site'] ifFalse: ['Click to enable this site']);
		onClickDo: [(aSite isEnabled ifTrue: [aSite disable] ifFalse: [aSite enable]) ];
		onClickUpdate: e with: aSite.
	aSite isEnabled ifTrue:
		[(e newCell addNilLinkText: (aSite isServing ifTrue: ['running'] ifFalse: ['stopped']) )
			title: (aSite isServing ifTrue: ['Click to stop this site'] ifFalse: ['Click to start this site']);
			onClickDo: [(aSite isServing ifTrue: [aSite stop] ifFalse: [aSite start]) ];
			onClickUpdate: e with: aSite].
	^e