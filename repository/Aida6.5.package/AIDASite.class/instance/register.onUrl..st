user services
register: anObjectOrApp onUrl: anUrlString
	"for easier registration of root domain objects or Apps"
	^self urlResolver defaultUrl: anUrlString for: anObjectOrApp