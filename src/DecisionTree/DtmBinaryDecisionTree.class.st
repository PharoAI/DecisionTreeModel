Class {
	#name : #DtmBinaryDecisionTree,
	#superclass : #DtmAbstractDecisionTreeComposite,
	#instVars : [
		'trueChild',
		'falseChild'
	],
	#category : #DecisionTree
}

{ #category : #accessing }
DtmBinaryDecisionTree >> decisionFor: anObject [ 
	^ (condition value: anObject) 
		ifTrue: [ trueChild decisionFor: anObject ] 
		ifFalse: [ falseChild decisionFor: anObject ]
	
]

{ #category : #'as yet unclassified' }
DtmBinaryDecisionTree >> explainWhy: aNode [
	"Give an explanation of why aNode is chosen"
	^ self condition -> (self trueChild == aNode).
]

{ #category : #accessing }
DtmBinaryDecisionTree >> falseChild [
	<ignoreForCoverage>
	^ falseChild
]

{ #category : #accessing }
DtmBinaryDecisionTree >> falseChild: aDecisionTreeNode [
	<ignoreForCoverage>
	aDecisionTreeNode parent: self.
	falseChild := aDecisionTreeNode
]

{ #category : #printing }
DtmBinaryDecisionTree >> printOn: aStream [
	<ignoreForCoverage>
	aStream 
		nextPutAll: self class name;
		nextPutAll: '(';
		nextPutAll: self condition asString;
		nextPutAll: ')'
]

{ #category : #accessing }
DtmBinaryDecisionTree >> trueChild [
	<ignoreForCoverage>
	^ trueChild
]

{ #category : #accessing }
DtmBinaryDecisionTree >> trueChild: aDecisionTreeNode [
	<ignoreForCoverage>
	aDecisionTreeNode parent: self.
	trueChild := aDecisionTreeNode
]