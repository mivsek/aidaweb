initialize-release
initNewUser
	"a fresh new user for a registration"
	newUser := self site webUserClass new.
	self password: ''