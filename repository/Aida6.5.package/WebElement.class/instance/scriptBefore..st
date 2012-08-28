scripts
scriptBefore: aString
	"add this JavaScript  to scripts executed before this element"
	(self otherAt: #scriptBefore ifAbsentPut: [WebScript new]) script: aString