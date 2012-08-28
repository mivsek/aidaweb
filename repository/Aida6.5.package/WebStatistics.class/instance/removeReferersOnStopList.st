private-referers
removeReferersOnStopList

	self refererStopList do: [:referer |
		self removeReferer: referer]

"WebStatistics default  removeReferersOnStopList"