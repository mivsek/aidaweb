adding links
addLinkTo: anObject text: aString 
	parameter: a1ParmString value: a1ValueString
	parameter: a2ParmString value: a2ValueString

	^self add: (WebLink text: aString  linkTo: anObject 
		parameter: a1ParmString value: a1ValueString
		parameter: a2ParmString value: a2ValueString)