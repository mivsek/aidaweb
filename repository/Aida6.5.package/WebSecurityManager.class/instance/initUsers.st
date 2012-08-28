initialize-release
initUsers
	users := Set new. 
	self groups do: [:each | each initUsers]. "to delete all potential users in those groups!"