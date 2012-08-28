odb specific
setupOdbStorage
	"Versant"

	self 
		store: #(started dailyCounts hourlyCounts total )
		as: #(Integer IntegerArray IntegerArray Integer).