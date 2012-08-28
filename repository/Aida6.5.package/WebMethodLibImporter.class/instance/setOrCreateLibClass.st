private-importing
setOrCreateLibClass
	"VW specific"
	| pkg class newClass mBody |
	self library isNil ifTrue: [^self error: 'Method library name missing!'].
"	self package notNil ifTrue:
		[pkg := Store.PackageModel allInstances 
			detect: [:each | self package =  each name]
			ifNone: [self error: 'package with that name does not exist'] ].
"	self library isBehavior ifTrue: [^nil]. "already set"
	class := [self library asSymbol asQualifiedReference value] "VW specific!"
		on: Error do: [:ex | nil].
	class notNil ifTrue: [^self library: class].
"	newClass := Smalltalk.AIDA defineClass: self library asSymbol " "VW specific"
"		superclass: #{AIDA.WebMethodLibraryNothing more expected -> }
		indexedType: #none 	private: false
		instanceVariableNames: '' 
		classInstanceVariableNames: 'BaseUrl MapCache' 
		imports: ''
		category: self package.
"	mBody := 'baseUrl
	^BaseUrl'.
	newClass  class compile: mBody classified: 'accessing'.
	mBody := 'baseUrl: anUrlString
	BaseUrl := self checkBaseUrl: anUrlString'.
	newClass  class compile: mBody classified: 'accessing'.
	mBody := 'invalidateMapCache
	MapCache := nil'.
	newClass  class compile: mBody classified: 'map'.
	pkg addClass: newClass.
	^self library: newClass.