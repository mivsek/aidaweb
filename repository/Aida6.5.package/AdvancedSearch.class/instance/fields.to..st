search form
fields: anArrayOfAspects to: anElement
	"build a search form for defined aspects (accessors) of searched objects"
	anArrayOfAspects do: [:aspect || name size |
		name := self nameFor: aspect.
		name last ~= $: ifTrue: [name := name, ':'].
		anElement cell addText: name.
		size := (self sizeFor: aspect) notNil ifTrue: [self sizeFor: aspect] ifFalse: [8].
		anElement newCell addInputFieldAspect: aspect for: self size: size.
		aspect ~= anArrayOfAspects last 
			ifTrue: [anElement newRow] ].