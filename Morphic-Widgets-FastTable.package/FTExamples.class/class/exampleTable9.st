examples
exampleTable9
   
   "two tables with the same datasource"

	<example>
	|pane table1 table2 dataSource|
dataSource :=FTCellSampleDataSource new:10.

table1 := FTTableMorph new
		extent: 500@500;
		enableCellSelectionMode;
		addColumn: (FTColumn id: 'column1');
		addColumn: (FTColumn id: 'column2');
		addColumn: (FTColumn id: 'column3');			
		addColumn: (FTColumn id: 'column4');
		addColumn: (FTColumn id: 'column5');	
		addColumn: (FTColumn id: 'column6');	
		dataSource: dataSource;
		selectRowIndex: 1;
		showFirstRowSelection;	
		beMultipleSelection;		
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
		dataSource: dataSource;
		selectRowIndex: 1;
		showFirstRowSelection;	
		beMultipleSelection;		
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
