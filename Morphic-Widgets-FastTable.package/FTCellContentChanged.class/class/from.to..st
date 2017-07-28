instance creation
from: oldData to: newData
	^ self new 
		oldCellContent:  oldData;
		newCellContent:  newData;
		yourself