private-cache
refreshClass: aClassWithTransl
	"refresh a cache from translations stored in class methods of specified class"
	| classDict methodDict langDict |
	classDict := self cache at: aClassWithTransl put: Dictionary new. "just remove old stuff"
	(self methodsOn: aClassWithTransl) do: [:method |
		methodDict := classDict at: method put: Dictionary new.
		(self langsForMethod: method on: aClassWithTransl) do: [:lang |
			langDict := methodDict 
				at: lang 
				put: (WebTranslDict newOn: self forClass: aClassWithTransl method: method language: lang).
			(self pairsForLang: lang method: method on: aClassWithTransl) do: [:assoc |
				langDict initialAt: assoc key put: assoc value ]]]. "initalAt:put: to avoid signaling change"
	^classDict