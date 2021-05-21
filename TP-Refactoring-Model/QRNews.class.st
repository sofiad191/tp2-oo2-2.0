Class {
	#name : #QRNews,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
QRNews >> retrieveQuestions: aUser [
	^ self retrieve: cuoora todayQuestions for: aUser
]
