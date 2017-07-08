accessing
prop2Column: column row: rowIndex
	^ FTTextEditCellMorph table: table content: ((self elementAt: rowIndex) property2 ) allowEdit: true
	"^ FTCellMorph new  
		color: (Color transparent);
		table: table;
		addMorphBack: (self elementAt: rowIndex) property2 asStringMorph;
		yourself"