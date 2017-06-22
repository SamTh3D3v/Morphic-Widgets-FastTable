accessing
prop1Column: column row: rowIndex
	^ FTTextEditCellMorph table: table content: ((self elementAt: rowIndex) property1 ) allowEdit: true
	"^ FTCellMorph new  
		color: (Color transparent);
		table: table;
      addMorphBack: (self elementAt: rowIndex) property1 asStringMorph;		
		yourself"