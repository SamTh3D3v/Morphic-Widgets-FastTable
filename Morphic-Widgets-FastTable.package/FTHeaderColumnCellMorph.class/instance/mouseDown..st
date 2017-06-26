event handling
mouseDown: event
	"perform the click"
	"#todo for now this event will send an order message to the datasource (Simple data source type only) the data source sub classes should have better design to pass the order message to all the child classes"
	(self isColumnOrderedFromLeast not and:self isColumnOrderedFromGreatest not) ifTrue:[ self table dataSource sortElements:[:a :c | a property1 > c property1 ].	
			self isColumnOrderedFromLeast:false. 
		self isColumnOrderedFromGreatest:true. 
				self inform: self isColumnOrderedFromGreatest asString .^self ].
	(self isColumnOrderedFromLeast) ifTrue:[ 
		self table dataSource sortElements:[:a :c | a property1 > c property1 ].
		self isColumnOrderedFromLeast: true. 
		self isColumnOrderedFromGreatest: false. 
		self inform: 'B1'.
		^self ]
	ifFalse:[ 
		self table dataSource sortElements:[:a :c | a property1 < c property1 ].
		self isColumnOrderedFromLeast: false. 
		self isColumnOrderedFromGreatest: true. 
				self inform: 'B2'.
		^self ].
	^self
				

	"since there two types of datasource, we need to make sure wich block to call"
"	table dataSource sortElements:  criteria: "
	"we nend to send a message to the data source to sort the column represented by this FTColumnCellMorph"