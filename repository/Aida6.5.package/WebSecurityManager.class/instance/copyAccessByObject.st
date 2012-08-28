private
copyAccessByObject
 
|dict|
Janko := Dictionary new.
WebSecurityManager default accessByObject 
keysAndValuesDo:
	[:key :value | 
		dict := Dictionary new.
		value keysAndValuesDo: [:key1 :value1 |
			dict at: key1 put: (IdentitySet withAll: (value1 collect: [:el | el asString asSymbol] )) ].
		Janko at: key put: dict].