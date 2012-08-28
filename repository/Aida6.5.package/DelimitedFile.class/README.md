DelimitedFile for reading and writing files in CSV format.

Example:
	records := (DelimitedFile new delimiter: $, ; codepage: #cp1250; readFrom: 'somedata.csv') records.
	records do: [:record | "do something on this array of fields"]

Default delimiter is $; and default codepage #UTF8. You can change it to, say,  #cp1250 (Central European) or others, see AIDASite class codepage converting for all possibilities


