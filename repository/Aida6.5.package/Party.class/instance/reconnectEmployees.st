private
reconnectEmployees
	"for debugging"
	self allEmployees do: [:each | self removeEmployee: each; addEmployee: each]