accessing
selectionMode: aString 
"row or column selection mode"
	(aString == #row or:aString == #column )
	ifTrue:[selectionMode := aString.
		self isMultipleSelection 
		ifTrue:[self beMultipleSelection ] "the selection strategy needs to updated based on the selection mode"
		ifFalse:[self beSingleSelection ]]