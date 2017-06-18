instance creation
new: anInteger
	^self basicNew 
	initializeDataSource: anInteger;
	yourself 