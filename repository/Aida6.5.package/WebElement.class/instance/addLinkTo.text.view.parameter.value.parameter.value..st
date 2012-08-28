adding links
addLinkTo: anObject text: aString view: aViewString  
		parameter: aParm1String value: aValue1String 
		parameter: aParm2String value: aValue2String

	^self add: ((WebLink text: aString  linkTo: anObject)
		view: aViewString;
		parameter: aParm1String value: aValue1String;
		parameter: aParm2String value: aValue2String; yourself)