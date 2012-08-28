private-obsolete
visitsCount
	"returns number of visits of this page"
     ^(self site urlResolver counterFor: self observee)
		total