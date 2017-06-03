accessing
selectionMode 
"row or column selection mode"
	^selectionMode ifNil: [ selectionMode  := self class defaultSelectionMode ]

