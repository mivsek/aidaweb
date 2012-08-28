examples
tests
	"some test of histories. Use it directly from code with doIt/printIt/inspectIt "

	| history |
	history := HistoryOfValue new.
	history value: 0 dated: (Date today ) author: '' comment: ''.
	history value: -2000 dated: (Date today - (365*100) -2) author: '' comment: ''.
	history value: -3 dated: (Date today -3) author: '' comment: ''.
	history value: -1 dated: (Date today -1) author: '' comment: ''.
	history value: 2 dated: (Date today +2) author: '' comment: ''.
	history value: 1 dated: (Date today +1) author: '' comment: ''.