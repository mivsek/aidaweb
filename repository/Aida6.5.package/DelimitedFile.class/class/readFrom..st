instance creation
readFrom: aFilenameString

	"read a specified delimited file and store records in a records attribute. Use default delimiter
	for field separator (character ; )"

	| instance |
	instance := self new.
	instance readFrom: aFilenameString.
	^instance.

"DelimitedFile readFrom: 'i:\projekti\dare\proizvod.txt' "