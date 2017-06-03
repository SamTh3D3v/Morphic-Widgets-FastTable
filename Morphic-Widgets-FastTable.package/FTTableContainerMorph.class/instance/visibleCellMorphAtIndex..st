accessing
visibleCellMorphAtIndex: index
	^ (self exposedRows at: index first) submorphs at: index second 