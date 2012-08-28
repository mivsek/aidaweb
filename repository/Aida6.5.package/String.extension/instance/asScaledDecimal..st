*Aida
asScaledDecimal: aScaleNumber
	"Janko Mivsek, Eranova d.o.o. dec97, feb07, may11"
	"convert a string to a scaled decimal number with specified scale. Precision is remained as specified
	in fraction part of a number. Decimal point character is automatically detected and can be . or , "
	| string clean pos sign dpCh number denomString |
	string := self trimBlanks. string isEmpty ifTrue: [^0 asScaledDecimal: aScaleNumber].
	sign := string detect: [:ch | ch = $- | ch isDigit] ifNone: [^0.0s]. 
	sign = $- ifTrue: [sign := -1] ifFalse: [sign := 1].
	dpCh := string reverse detect: [:ch | ch isDigit not] ifNone: [$.].
	clean := string select: [:ch | ch isDigit | (ch = dpCh)].  clean isEmpty ifTrue: [^0.0s].
	clean first = dpCh ifTrue: [clean := '0', clean].
	pos := clean indexOf: dpCh . pos = 0 ifTrue: [^(clean asInteger asScaledDecimal: aScaleNumber)*sign].
	denomString := clean copyFrom: pos+1 to: clean size.
	number := ScaledDecimal new
		setNumerator: ((clean copyUpTo: dpCh ), denomString) asInteger
		denominator:  (10 raisedTo: denomString size)
		scale: aScaleNumber.
	^number * sign

" '-2.445.444,988899987' asScaledDecimal: 3 " "comma as decimal point (european)"
" '-2,445,444.988899987' asScaledDecimal: 3 " "point as decimal point"