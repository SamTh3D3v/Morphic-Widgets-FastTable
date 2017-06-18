accessing
prop1Column: column row: rowIndex
	^ FTCellMorph new  
		color: (Color transparent);
		table: table;
      addMorphBack: (self elementAt: rowIndex) porperty1 asStringMorph;		
		yourself