instance creation
prop1:aString1 prop2:aString2 prop3:aString3 prop4:aBoolean prop5:anObject
	^self basicNew 
	initialize:aString1 prop2:aString2 prop3:aString3 prop4:aBoolean prop5:anObject;
	yourself 