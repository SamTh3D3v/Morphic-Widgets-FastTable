examples
exampleTable6
	"Show a table with cell selection mode, and enable editing them on double click"
	"this class uses the test SampleDataSource implemented in tests"
	<example>
	|table ds|
ds:=FTCellSampleDataSource new:10.
table := FTTableMorph new
		extent: 500@500;
		selectionMode: #column;
		addColumn: (FTColumn id: 'column1');
		addColumn: (FTColumn id: 'column2');
		addColumn: (FTColumn id: 'column3');			
		addColumn: (FTColumn id: 'column4');
		addColumn: (FTColumn id: 'column5');	
		dataSource: ds;
		selectRowIndex: 1;
		showFirstRowSelection;	
		beMultipleSelection;
		onAnnouncement: FTSelectionChanged 
			do: [ :ann | ('rows selected: ', (ann newSelectedRowIndexes asString)) crLog ];
		onAnnouncement: FTCellStrongSelectionChanged 
			do: [ :ann | |index morph ep |
				index := ann selectedCellIndex.
				morph := table visibleCellMorphAtIndex: index.			
				ep := EditingProvider dateSource:ds. ep addCellEditingEvents: morph at:index.
		];
	   allowDeselection;
		yourself.
		table openInWindow.