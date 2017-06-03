initialization
initializeTable: tableMorph 
	self initialize.
	table := tableMorph.
	self 
		cellInset: tableMorph intercellSpacing";
		layoutInset: tableMorph intercellSpacing".
	self flag: #todo. "Check if layout inset works better"