accessing-tags
imgTagIndexes
	"indexes of elements, which represent image tags in original html file"
	imgTagIndexes isNil ifTrue: [self clearImgTagIndexes].
	^imgTagIndexes