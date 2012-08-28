initialize-release
initFavicon
	"/favicon.ico, a small icon shown in browser near url address"
	"(AIDASite named: 'biart') initFavicon."
	| icon |
	icon := WebMethodImage
		initCache; 
		fromMethod: #favicon on: self style contentType: 'image/x-icon' site: self.
	self register: icon onUrl: '/favicon.ico'.