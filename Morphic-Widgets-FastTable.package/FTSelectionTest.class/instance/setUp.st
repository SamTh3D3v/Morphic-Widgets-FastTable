initialization
setUp
	table := FTTableMorph new
		extent: 500@500;
		addColumn: (FTColumn id: 'column1');
		addColumn: (FTColumn id: 'column2');
		addColumn: (FTColumn id: 'column3');		
		addColumn: (FTColumn id: 'column4');		
		dataSource: (FTSampleDataSource new:10);
		selectRowIndex: 1;
		showFirstRowSelection;	
		yourself.