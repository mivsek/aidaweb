layout
headerUserElement
	| e usr te adminStyle |
	e := WebElement newSpan. e ensureId.
 	usr := self app user.
	adminStyle := 'color: red'.
	te := e addTextBold: ' ', usr name, ' ', usr surname.
	usr hasAdminRights 
		ifTrue: 
			[te style: adminStyle. e addSpace.
			usr isAdminUser not
				ifTrue: [(e addNilLinkText: #en-> '(Admin)')
						style: adminStyle;
						onClickDo: 
							[usr unEscalateFromAdmin. 
							self app page redirectTo: self app observee] ] "to refresh links too"
				ifFalse: [e addText: #en->'(has always Admin rights)'] ]
		ifFalse: 
			[usr inAdminGroup ifTrue: 
				[(e addSpace; addNilLinkText: #en-> '(be Admin)')
					onClickDo: 
						[usr escalateToAdmin. 
						self app page redirectTo: self app observee] ] ]. "to refresh links too"
	^e