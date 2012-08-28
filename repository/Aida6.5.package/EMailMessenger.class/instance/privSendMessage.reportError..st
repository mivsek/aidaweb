private-sending
privSendMessage: aRFC822Message reportError: aReportSymbol
	| errorText |
	[aRFC822Message fromSendStrings isEmpty 
		ifTrue: [aRFC822Message from: self repository adminEMail].
	self client 
		connect;
		useAuthentication: false; "for now"
		login;
		sendMessage: aRFC822Message;
		quit.
	self reportMailSend: aRFC822Message]
			on: Error
			do: [:ex | errorText := ex class name, ': ', ex errorString.
				Transcript cr; show: 'e-mail sending on ', self repository site name, ' failed: ', errorText; cr.
				(Delay forMilliseconds: 1000) wait.
				aReportSymbol = #repeat ifTrue:
					[Transcript show: 'repeating: '.
					self privSendMessage: aRFC822Message reportError: #report].
				aReportSymbol = #report ifTrue:
					[self notifyError: errorText toSenderOf: aRFC822Message] ].
	(Delay forMilliseconds: 200) wait.