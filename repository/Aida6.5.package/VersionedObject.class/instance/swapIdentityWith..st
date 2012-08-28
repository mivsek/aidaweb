private
swapIdentityWith: anObject
	"carefully adjust object references (object, parent, next) in version specs too!"
	|  o1 o2 s1Spec s2Spec |
	o1 := self. o2 := anObject.  s1Spec := o1 version. s2Spec := o2 version.
	o1 become: o2.
	s1Spec object: o2. s2Spec object: o1.
	s1Spec isNewest ifFalse:
		[s1Spec next == o2 ifTrue: [s1Spec next: o1] ifFalse: [s1Spec next version parent: o2] ].
	s1Spec isOldest ifFalse:
		[s1Spec parent == o2 ifTrue: [s1Spec parent: o1] ifFalse: [s1Spec parent version next: o2]].
	s2Spec isNewest ifFalse:
		[s2Spec next == o1 ifTrue: [s2Spec next: o2] ifFalse: [s2Spec next version parent: o1] ].
	s2Spec isOldest ifFalse:
		[s2Spec parent == o1 ifTrue: [s2Spec parent: o2] ifFalse: [s2Spec parent version next: o1]].