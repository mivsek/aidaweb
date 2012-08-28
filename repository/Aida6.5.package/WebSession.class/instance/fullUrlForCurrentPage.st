private
fullUrlForCurrentPage
	"composes and returns a full url for a curent requested page. If parms dictionary is changed, 
	then a query string with changed parameters is generated. Usefull for presenting the same 
	page in a different way by parameteres in query string"
	^self lastRequest urlString