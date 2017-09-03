as yet unclassified
enableRowSelectionMode
	selectionMode := #row.
	self selectionStrategy ifNotNil: [ 
		self isMultipleSelection 
	   ifTrue:[selectionStrategy := FTMultipleSelection table: self]
		ifFalse:[selectionStrategy := FTSimpleSelection table: self]
	 ]