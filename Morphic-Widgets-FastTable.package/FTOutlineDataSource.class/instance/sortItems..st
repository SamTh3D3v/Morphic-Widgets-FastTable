operations
sortItems: aBlock
	self items: (self items asSortedCollection: aBlock).
	self table refresh.