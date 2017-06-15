accessing
prop4Column: column row: rowIndex
	^ FTCellMorph new  
		color: (Color transparent);
		table: table;
		addMorphBack: (self elementAt: rowIndex) porperty4 asStringMorph;
		yourself