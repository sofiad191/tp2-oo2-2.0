Class {
	#name : #QRNews,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
QRNews >> retrieveQuestions: aUser [
	| newsCol |
	newsCol := OrderedCollection new.
	newsCol := self todayQuestions.
	^ self retrieve: newsCol for: aUser
]
