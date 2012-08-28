private-ajax
changeContextFrom: oldCtx to: newCtx
	"scan for all references to contexts and change them. Also in subelements"
	self changeContextInAttributesFrom: oldCtx to: newCtx.
	self elements do: [:each | each changeContextFrom: oldCtx to: newCtx]