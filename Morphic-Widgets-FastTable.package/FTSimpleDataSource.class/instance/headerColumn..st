accessing
headerColumn: column
	column id ifNil: [ ^ nil ]. 
	^ FTHeaderColumnCellMorph new 
		listCentering: #center;
		column: column;
		table:self table;
		addMorph: (self getCellMorphContent:column);
		yourself