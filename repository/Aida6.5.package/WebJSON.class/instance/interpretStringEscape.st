private-parsing
interpretStringEscape
	| c |
	c := self next.
	c == $b ifTrue: [^ Character backspace].
	c == $n ifTrue: [^ Character lf].
	c == $f ifTrue: [^ Character newPage].
	c == $r ifTrue: [^ Character cr].
	c == $t ifTrue: [^ Character tab].
	^ c.