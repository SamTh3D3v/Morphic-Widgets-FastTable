event handling
mouseDown: event

	self isSortEnabled  ifFalse: [ ^self ].
	(self column isColumnOrderedFromLeast not and:self column isColumnOrderedFromGreatest not) ifTrue:[ self table dataSource sortElements:[:a :c | (a perform: (self column property)) asString  > (c perform:(self column property)) asString ].	
			self column isColumnOrderedFromLeast:false. 
		self column isColumnOrderedFromGreatest:true. ^self ].
	(self column isColumnOrderedFromLeast) ifTrue:[ 
		self table dataSource sortElements:[:a :c | (a perform:(self column property))asString > (c perform:(self column property)) asString].
		self column isColumnOrderedFromLeast: false. 
		self column isColumnOrderedFromGreatest: true. 
		^self ]
	ifFalse:[ 
		self table dataSource sortElements:[:a :c | (a perform:(self column property))asString < (c perform:(self column property))asString ].
		self column isColumnOrderedFromLeast: true. 
		self column isColumnOrderedFromGreatest: false. 
		^self ].
	^self
				
