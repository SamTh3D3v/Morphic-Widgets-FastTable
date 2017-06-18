private
createSampleModels:anInterger
	|coll|
	coll := OrderedCollection new.
	1 to: anInterger do: [:cpt | coll add: (FTCellSampleClassModel prop1:'property 1.',cpt asString  prop2: 'property 2.',cpt asString prop3: 'property 3.',cpt asString prop4: (cpt % 2)=1 prop5: 'three')]. 
	^ coll.