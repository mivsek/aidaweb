private
detectCodepage: aString
	" "
	| win1250 iso2 sevenBit above127 |
	win1250 := 0.
	aString do: [:ch | (#(200 154 138 158 142) includes: ch asInteger) ifTrue: [win1250 := win1250+1] ].
	iso2 := 0.
	aString do: [:ch | (#(200 185 169 190 174) includes: ch asInteger) ifTrue: [iso2 := iso2+1] ].
	sevenBit := 0.
"	aString do: [:ch | (#(94 123 91 96 64) includes: ch asInteger) ifTrue: [sevenBit := sevenBit+1] ]."
	above127 := 0.
	aString do: [:ch | ch asInteger > 127 ifTrue: [above127 := above127+1] ].
	above127 = 0 
		ifTrue: [sevenBit ~= 0 ifTrue: [^#'7bit'] ifFalse: [^#csz] ]
		ifFalse: [iso2 > win1250 ifTrue: [^#'iso-8859-2'] ifFalse: [^#'win-1250'] ].