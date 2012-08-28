private
settings
	settings isNil ifTrue: 
		[settings := Dictionary new. 
		self initDefaultSettings].
	^settings

"WebServer default settings"