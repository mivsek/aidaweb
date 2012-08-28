accessing
counterForUrlOrFirstPage
	"if url query part contains and url for target domain object to show counter, return that
  	otherwise first page counter only"
	"Also sets instvar domainObject!"
	| url |
	url := (self session lastRequest includesQuery: 'url')
		ifTrue: [self session lastRequest queryAt: 'url'] ifFalse: [nil].
	self domainObject: (url notNil 
			ifTrue: [self site urlResolver objectOnUrl: url]
			ifFalse: [self firstPageObject notNil ifTrue: [self firstPageObject] ifFalse: [nil] ]).
	^self domainObject notNil 
		ifTrue: [self site urlResolver counterFor: self domainObject]
		ifFalse: [nil]