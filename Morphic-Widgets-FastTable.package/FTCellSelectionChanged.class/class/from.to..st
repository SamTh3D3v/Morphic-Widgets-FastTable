instance creation
from: oldArray to: newArray 
	^ self new 
		oldSelectedCellsIndexes: oldArray;
		newSelectedCellIndexes: newArray;
		yourself