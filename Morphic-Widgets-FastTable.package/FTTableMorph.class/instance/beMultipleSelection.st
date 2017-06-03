accessing
beMultipleSelection
   selectionMode == #row
	ifTrue:[selectionStrategy := FTMultipleSelection table: self]
	ifFalse:['todo']