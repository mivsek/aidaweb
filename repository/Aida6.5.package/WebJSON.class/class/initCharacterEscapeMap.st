private
initCharacterEscapeMap
	"WebJSON initCharacterEscapeMap"
	CharacterEscapeMap := Dictionary new
		add: $" -> $";
		add: $\ -> $\;
		add: Character backspace -> $b;
		add: Character lf -> $n;
		add: Character newPage -> $f;
		add: Character cr -> $r;
		add: Character tab -> $t;
		yourself.