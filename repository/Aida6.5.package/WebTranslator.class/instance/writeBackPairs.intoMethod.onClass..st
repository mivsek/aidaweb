private-classes-changes
writeBackPairs: aTranslPairsArray intoMethod: aTranslMethodSymbol onClass: aClassWithTransl
	| cr mstream semaphore |
	cr :=  (String with: Character cr).
	mstream := WriteStream on: String new.
	mstream
		nextPutAll: aTranslMethodSymbol asString, cr;
		nextPut: Character tab; nextPutAll: '^#('.
	aTranslPairsArray do: [:assoc |
		mstream 
			nextPut: Character cr; nextPut: Character tab; nextPutAll: '(';
			nextPut: $'; nextPutAll: (AIDASite convert: assoc key toCodepage: #UTF8); nextPut: $'; 
			nextPutAll: '->';
			nextPut: $'; nextPutAll:  (AIDASite convert: assoc value toCodepage: #UTF8); nextPut: $';
			nextPutAll: ')'].
	mstream nextPut: Character cr; nextPut: Character tab; nextPutAll: ')', cr. 
	semaphore := Semaphore new.
	[aClassWithTransl class compile: mstream contents  classified: 'translations'. semaphore signal] 
		fork. "well, don't ask why :( "
	semaphore wait. "for forked compilation to finish"