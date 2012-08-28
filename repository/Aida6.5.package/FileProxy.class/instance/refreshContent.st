initialize-release
refreshContent
	self releaseContent. "in case we switch from cached to non cached because of size change"
	self from: self filename asString.