accessing
anchorNr: aNumber

	"set hypertext link anchor in the same page in format '#anchorx', for example '#anchor4'. Use WebAnchor nr: method to add an anchor in a web page."

	^self anchor: '#anchor', aNumber printString.