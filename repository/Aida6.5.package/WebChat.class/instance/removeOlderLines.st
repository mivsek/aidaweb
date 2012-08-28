private
removeOlderLines
	(self lines size - 4) timesRepeat: [self lines removeFirst]