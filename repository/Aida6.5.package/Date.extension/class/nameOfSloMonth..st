*Aida
nameOfSloMonth: monthIndex 
	"Answer a symbol representing the slovenian name of the month indexed by 
	monthIndex, 1 - 12."
	^#(Januar Februar Marec April Maj Junij 
		Julij Avgust September Oktober November December)
		at: monthIndex