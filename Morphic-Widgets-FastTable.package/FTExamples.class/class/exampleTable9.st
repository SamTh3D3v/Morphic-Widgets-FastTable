examples
exampleTable9
"two tables with the same datasource"
	<example>
	|pane table1 table2 ds|
ds:=FTCellSampleDataSource new:10.

table1 := FTTableMorph new
		extent: 500@500;
		selectionMode: #column;
		addColumn: (FTColumn id: 'column1');
		addColumn: (FTColumn id: 'column2');
		addColumn: (FTColumn id: 'column3');			
		addColumn: (FTColumn id: 'column4');
		addColumn: (FTColumn id: 'column5');	
		addColumn: (FTColumn id: 'column6');	
		dataSource: ds;
		selectRowIndex: 1;
		showFirstRowSelection;	
		beMultipleSelection;
		onAnnouncement: FTSelectionChanged 
			do: [ :ann | ('rows selected: ', (ann newSelectedRowIndexes asString)) crLog ];
		onAnnouncement: FTCellContentChanged  
			do: [ :ann | self inform: 'Yes' ];
		onAnnouncement: FTCellStrongSelectionChanged 
			do: [ :ann | |index ep|
				index := ann selectedCellIndex.	
				ep := EditingProvider dateSource:ds. ep addCellEditingEvents:index.
		];
	   allowDeselection;
		yourself.
table2 := FTTableMorph new
		extent: 500@500;
		selectionMode: #column;
		addColumn: (FTColumn id: 'column1');
		addColumn: (FTColumn id: 'column2');
		addColumn: (FTColumn id: 'column3');			
		addColumn: (FTColumn id: 'column4');
		addColumn: (FTColumn id: 'column5');	
		addColumn: (FTColumn id: 'column6');	
		dataSource: ds;
		selectRowIndex: 1;
		showFirstRowSelection;	
		beMultipleSelection;
		onAnnouncement: FTCellContentChanged  
			do: [ :ann | self inform: 'Yes' ];
		onAnnouncement: FTSelectionChanged 
			do: [ :ann | ('rows selected: ', (ann newSelectedRowIndexes asString)) crLog ];		
		onAnnouncement: FTCellStrongSelectionChanged 
			do: [ :ann | |index ep|
				index := ann selectedCellIndex.	
				ep := EditingProvider dateSource:ds. ep addCellEditingEvents:index.
		];
	 layoutInset: 10;
		yourself.
pane := Morph new.
pane layoutPolicy: TableLayout new. 
pane listDirection: #leftToRight. 
pane listCentering: #center. 
pane wrapCentering: #center. 
pane hResizing: #spaceFill.
pane layoutInset: 10@10. 
pane cellInset:10@10.
pane color: Color red.

pane addMorph: table1.
pane addMorph: table2.
pane openInWindow .
