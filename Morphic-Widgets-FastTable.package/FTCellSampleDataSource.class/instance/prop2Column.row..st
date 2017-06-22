accessing
prop2Column: column row: rowIndex
	^ FTCellMorph new  
		color: (Color transparent);
		table: table;
		addMorphBack: (self elementAt: rowIndex) property2 asStringMorph;
		yourself