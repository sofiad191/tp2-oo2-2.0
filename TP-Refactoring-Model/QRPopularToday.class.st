Class {
	#name : #QRPopularToday,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
QRPopularToday >> retrieveQuestions: aUser [
	| popularTCol averageVotes |
	popularTCol := OrderedCollection new.
	popularTCol := self todayQuestions.
	
	averageVotes := (cuoora questions sum: [ :q | q positiveVotes size ])
		/ popularTCol size.
		
	^ self
		retrieve: (popularTCol select: [ :q | q positiveVotes size >= averageVotes ])
		for: aUser
]
