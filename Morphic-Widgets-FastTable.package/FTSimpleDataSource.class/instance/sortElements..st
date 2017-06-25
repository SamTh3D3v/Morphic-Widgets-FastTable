operations
sortElements: aBlock
	self elements:  (self elements asSortedCollection: aBlock).
	self table refresh.