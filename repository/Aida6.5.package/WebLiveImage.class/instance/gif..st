private
gif: aByteArray

	"also set a refreshed timestamp"

	gif := aByteArray.
	self refreshed: Timestamp now.