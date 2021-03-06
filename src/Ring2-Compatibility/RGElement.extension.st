Extension { #name : #RGElement }

{ #category : #'*Ring2-Compatibility' }
RGElement >> theNonMetaClassName [

	^self theNonMetaParentName 
]

{ #category : #'*Ring2-Compatibility' }
RGElement >> theNonMetaParentName [
	"Rejects the prefix ' class' or ' classTrait' of the parentName"
	| index |
	
	index := self parent name
				indexOfSubCollection: ' class'
				startingAt: 1
				ifAbsent: [ ^self parent name ].

	^(self parent name 
		copyFrom: 1
		to: index - 1) asSymbol
]
