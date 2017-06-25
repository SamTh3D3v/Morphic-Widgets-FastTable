event handling
mouseDown: event
	"perform the click"
	self inform: self id asString.
	"since there two types of datasource, we need to make sure wich block to call"
"	table dataSource sortElements:  criteria: "
	"we nend to send a message to the data source to sort the column represented by this FTColumnCellMorph"