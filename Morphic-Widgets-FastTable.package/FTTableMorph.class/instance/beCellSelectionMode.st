as yet unclassified
beCellSelectionMode
	self selectionMode: #column.
	self selectionStrategy ifNotNil: [ 
		self isMultipleSelection 
	   ifTrue:[selectionStrategy := FTCellMultipleSelection table: self]
		ifFalse:[selectionStrategy := FTCellSimpleSelection table: self]
	 ]