serving
reportException: anException
	 | report |
	Transcript cr; show: '*** error in web app code: ', anException errorString.
"	report := DebuggerService shortStackFor: anException initialContext ofSize: 10.
	(report  tokensBasedOn: Character cr) do: [:each |
		Transcript cr; show: '     ', each].
"