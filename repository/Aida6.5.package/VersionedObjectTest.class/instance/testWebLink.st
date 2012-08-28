testing-url links
testWebLink
	| o1 o2 link |
	o1 := VersionedExample new. o1 title: 'first'.
	o2 := o1 asNewVersion. o2 title: 'second'.
	link := WebLink linkTo: o1.
	self assert: link ooReference == o1.
	self deny: (link parms includesKey: 'version').
	link := WebLink linkTo: o2.
	self assert: link ooReference == o1.  "o1 is current version! "
	self assert: (link parms at: 'version') = '2'.