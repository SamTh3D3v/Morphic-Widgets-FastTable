multi-selection
beSingleSelection
	selectionMode == #row
	ifTrue: [selectionStrategy := FTSimpleSelection table: self]
	ifFalse: [selectionStrategy := FTCellSimpleSelection table: self]