accessing
beMultipleSelection
   selectionMode == #row
	ifTrue:[selectionStrategy := FTMultipleSelection table: self]
	ifFalse:[selectionStrategy := FTCellMultipleSelection table: self]