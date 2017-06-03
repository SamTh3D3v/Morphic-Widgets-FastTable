instance creation
cellIndex: aTuple event: anEvent
	^ self new 
		selectedCellIndex: aTuple;
		event: anEvent;
		yourself