operations
updateDataSource
	((self table dataSource elements at: self cellPosition  second) perform:  self cellPosition first property) 
	self table refresh.