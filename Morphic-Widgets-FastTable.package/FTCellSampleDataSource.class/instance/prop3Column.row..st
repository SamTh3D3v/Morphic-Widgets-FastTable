accessing
prop3Column: column row: rowIndex
	^ FTTextEditCellMorph table: table content: ((self elementAt: rowIndex) property3 ) allowEdit: true
	"^ FTCellMorph new  
		color: (Color transparent);
		table: table;
		addMorphBack: (self elementAt: rowIndex) property3 asStringMorph;
		yourself"