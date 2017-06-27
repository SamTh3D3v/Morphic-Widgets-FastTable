initialization
initialize
	super initialize.
	self isColumnOrderedFromLeast:false. 
	self isColumnOrderedFromGreatest:true. 
	self inform: 'init'.