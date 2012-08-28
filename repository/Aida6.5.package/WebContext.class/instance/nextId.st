private-ids
nextId
	" example: #id9. 
	Consider also already registered ids in contexts above in chain if any "
	^'id', (self nextIdNumber printString) asSymbol