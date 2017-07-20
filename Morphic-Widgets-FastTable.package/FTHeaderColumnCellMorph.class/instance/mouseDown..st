event handling
mouseDown: event
	"perform the click"
	"#todo for now this event will send an order message to the datasource (Simple data source type only) the data source sub classes should have better design to pass the order message to all the child classes"	 
"Raise an exception if the object doesn't understand > or <, self inform: (True class  canUnderstand: #>  ) asString."
	self allowSort  ifFalse: [ ^self ].
	(self column isColumnOrderedFromLeast not and:self column isColumnOrderedFromGreatest not) ifTrue:[ self table dataSource sortElements:[:a :c | (a perform: (self column property)) > (c perform:(self column property)) ].	
			self column isColumnOrderedFromLeast:false. 
		self column isColumnOrderedFromGreatest:true. ^self ].
	(self column isColumnOrderedFromLeast) ifTrue:[ 
		self table dataSource sortElements:[:a :c | (a perform:(self column property)) > (c perform:(self column property)) ].
		self column isColumnOrderedFromLeast: false. 
		self column isColumnOrderedFromGreatest: true. 
		^self ]
	ifFalse:[ 
		self table dataSource sortElements:[:a :c | (a perform:(self column property)) < (c perform:(self column property)) ].
		self column isColumnOrderedFromLeast: true. 
		self column isColumnOrderedFromGreatest: false. 
		^self ].
	^self
				

	"since there two types of datasource, we need to make sure wich block to call"
"	table dataSource sortElements:  criteria: "
	"we nend to send a message to the data source to sort the column represented by this FTColumnCellMorph"