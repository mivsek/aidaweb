accessing
parameter: aParmString value: aValueString

	"set an optional parameter for query part of an URL string (e.g in http://www.eranova.si/demo.html?view=brief 'view' is a parameter and 'brief' is its value).
You can set more than one parameters by repeating this method"

	self parms at: aParmString asString put: aValueString asString.