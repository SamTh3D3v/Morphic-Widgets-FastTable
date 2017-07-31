operations
updateDataSource
	|index|
	index := self table columnIndexOf: self cellPosition first id.
	"((self table dataSource elements at: self cellPosition  second) perform:  self cellPosition first property) 
	self table refresh."