*Aida
asHttpFriendly
	"Usefull specially for Url composition (like in preferedUrl). Converts all non Url friendly 
	characters to '-' and skip last point if exists (not good for Urls in emails).
 	Caution, / is also converted! Unicode is allowed "
	| nonallowed conv |
	nonallowed := #($ $+ $: $> $< $= $/ #\ $~ $( $) ).
	self isEmpty ifTrue: [^self].
	conv := self collect: 
		[:ch | (nonallowed includes: ch)
			ifTrue: [$-]
			ifFalse: [ch] ].
	^(conv last = $. )
		ifTrue: [conv copyFrom: 1 to: conv size-1] "skip last point"
		ifFalse: [conv]

" '1+1=(3/4).d.d.' asHttpFriendly "