accessing
prop3Column: column row: rowIndex
	^ FTCellMorph new  
		color: (Color transparent);
		table: table;
		addMorphBack: (self elementAt: rowIndex) property3 asStringMorph;
		yourself