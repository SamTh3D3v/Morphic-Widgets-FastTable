event handling
mouseDown: event
	"perform the click"
	"#todo for now this event will send an order message to the datasource (Simple data source type only) the data source sub classes should have better design to pass the order message to all the child classes"
	self inform: self id asString.
	self table dataSource sortElements:[:a :c | a property1 > c property1 ].
	"since there two types of datasource, we need to make sure wich block to call"
"	table dataSource sortElements:  criteria: "
	"we nend to send a message to the data source to sort the column represented by this FTColumnCellMorph"