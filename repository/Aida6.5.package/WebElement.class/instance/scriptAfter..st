scripts
scriptAfter: aString
	"add this JavaScript  to scripts executed after this element"
	(self otherAt: #scriptAfter ifAbsentPut: [WebScript new]) script: aString