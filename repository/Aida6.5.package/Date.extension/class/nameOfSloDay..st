*Aida
nameOfSloDay: dayIndex 
	"Answer a symbol representing the slovenian name of the day indexed by 
	dayIndex, 1 - 7."
	^#('Ponedeljek' 'Torek' 'Sreda' 'C^etrtek' 'Petek' 'Sobota' 'Nedelja') at: dayIndex

"Date nameOfSloDay: 4"