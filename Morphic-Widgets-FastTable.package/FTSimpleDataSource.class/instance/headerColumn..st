accessing
headerColumn: column
	column id ifNil: [ ^ nil ]. 
	^ FTHeaderColumnCellMorph new 
		listCentering: #center;
		column: column;
		table:self table;
		addMorph: column id asMorph;
		yourself