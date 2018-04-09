tests - revert
testRevertOnClassInTheSameEnvironmentCleaned

	"try to revert a cleaned change in the same environment where the class has already unresolved name. It should raise an resolving error"
	
	| class change |
	
	class := RGClass unresolved.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.
	
	self should: [ change revertIn: class environment ] raise: RGResolvingError.
		