private
createTheTable: anInteger
	|coll|
	coll := OrderedCollection new.
	1 to: anInteger do:[ :a |coll add: (FTSamplePerson name:'' date:'' gender:'' )].	
	^coll