accessing
prop1Column: column row: rowIndex
	^ FTCellMorph new  
		color: (Color transparent);
		table: table;
      addMorphBack: (self elementAt: rowIndex) property1 asStringMorph;		
		yourself