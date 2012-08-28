private
packBits: bits depthFrom8To: depth width: xSize height: ySize pad: pad 
	| maxPixelVal pixelInByte bitsWidth pBitsWidth pBits |
	(#(1 2 4) includes: depth)
		ifFalse: [^self error: 'depth must be 1, 2, or 4'].
	(#(8 16 32) includes: pad)
		ifFalse: [^self error: 'pad must be 8, 16, or 32'].
	maxPixelVal := (1 bitShift: depth)
				- 1.
	pixelInByte := 8 / depth.
	bitsWidth := xSize * 8 + pad - 1 // pad * (pad / 8).
	pBitsWidth := xSize * depth + pad - 1 // pad * (pad / 8).
	pBits := ByteArray new: pBitsWidth * ySize.
	1 to: ySize
		do: 
			[:i | 
			| bitIndex pBitIndex pixelVal count |
			bitIndex := i - 1 * bitsWidth.
			pBitIndex := i - 1 * pBitsWidth.
			pixelVal := 0.
			count := 0.
			1 to: xSize
				do: 
					[:j | 
					| val |
					val := bits at: (bitIndex := bitIndex + 1).
					val > maxPixelVal ifTrue: [^self error: 'can''t pack bits'].
					pixelVal := (pixelVal bitShift: depth)
								+ val.
					(count := count + 1) >= pixelInByte
						ifTrue: 
							[pBits at: (pBitIndex := pBitIndex + 1) put: pixelVal.
							pixelVal := 0.
							count := 0]].
			count > 0 ifTrue: [pBits at: (pBitIndex := pBitIndex + 1) put: (pixelVal bitShift: depth * (pixelInByte - count))]].
	^pBits