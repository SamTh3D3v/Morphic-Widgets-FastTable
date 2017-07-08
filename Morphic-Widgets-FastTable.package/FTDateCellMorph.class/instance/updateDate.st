operations
updateDate
	self date: self calendar date.
	(self table dataSource elements at: self cellIndex first) instVarAt: self cellIndex  second put: self calendar date.
	self table refresh.
	self calendar delete .