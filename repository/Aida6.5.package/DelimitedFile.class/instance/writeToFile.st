file writing
writeToFile
	self writeToFile: self filename.
"
|dmFile|
dmFile := DelimitedFile fileToWrite: 'test.dat'.
dmFile records 
	add: (Array with: 123 with: 'abcd' with: 345);
	add: (Array with: 234 with: 'CDE' with: 567).
dmFile writeToFile
"