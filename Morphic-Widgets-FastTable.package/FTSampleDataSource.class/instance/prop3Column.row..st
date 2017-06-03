accessing
prop3Column: column row: rowIndex
	^ FTCellMorph new  
		color: (Color transparent);
		table: table;
		addMorphBack: (self elementAt: rowIndex) porperty3 asStringMorph;
		yourself