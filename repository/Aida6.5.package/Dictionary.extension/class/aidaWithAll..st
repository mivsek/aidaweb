*Aida
aidaWithAll: aCollectionOfAssociations
	| dict |
	dict := self new.
	aCollectionOfAssociations do: [:assoc | dict at: assoc key put: assoc value].
	^dict