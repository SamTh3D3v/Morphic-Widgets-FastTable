accessing
headerColumn: column
	column id ifNil: [ ^ nil ]. 
	^ FTColumnCellMorph new 
		listCentering: #center;
		addMorph: column id asMorph;
		yourself