behavior
layoutFor: anRGBehavior

	| realClass realLayout def |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realLayout := realClass classLayout.
	def := self 	definitionFor: realLayout ifAbsentRegister: [ 
			realLayout asRing2MinimalDefinitionIn: anRGBehavior environment ].
	^ def