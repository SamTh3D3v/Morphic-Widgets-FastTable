accessing
headerColumn: column
	column id ifNil: [ ^ nil ]. 
	^ FTHeaderColumnCellMorph new 
		listCentering: #left;
		column: column;
		enableSort;
		table:self table;
		addMorph: (self getCellMorphContent:column);
		yourself