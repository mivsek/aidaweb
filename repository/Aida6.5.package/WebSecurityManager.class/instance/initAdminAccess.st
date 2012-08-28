initialize-release
initAdminAccess
	"admin group has rights to all views and updates in all Apps! "
	WebApplication allowAllViewsFor: self adminGroup on: self site.
	WebApplication allowAllUpdatesFor: self adminGroup  on: self site.