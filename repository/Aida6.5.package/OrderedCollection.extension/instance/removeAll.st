*Aida
removeAll
	"remove all elements quickly"
	self removeAllSuchThat: [:each | true]. "Squeak specific. #become: is VERY slow!"
"	self become: OrderedCollection new " "VW specific"