Class {
	#name : #QRPopularToday,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
QRPopularToday >> retrieveQuestions: aUser [
	^ self
		retrieve: cuoora popularQuestions
		for: aUser
]
