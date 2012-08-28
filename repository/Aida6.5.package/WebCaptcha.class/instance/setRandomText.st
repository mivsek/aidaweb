accessing
setRandomText
	"5 characters or numbers"
	| rnd rgen |
	rnd := ByteString new: 5. rgen := Random new.
	1 to: 5 do: [:inx | rnd at: inx put: (self randomCharacterOnGen: rgen)].
	self text: rnd.
