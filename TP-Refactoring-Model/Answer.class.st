Class {
	#name : #Answer,
	#superclass : #Publication,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: anAnswer user: aUser question: aQuestion [
	^ self new
		description: anAnswer;
		user: aUser;
		question: aQuestion;
		yourself
]

{ #category : #initialize }
Answer >> initialize [
	super initialize
]

{ #category : #accessing }
Answer >> isTopAnswer [
	^ self positiveVotes >= question averageVotesAnswers 
]

{ #category : #private }
Answer >> question: aQuestion [
	question := aQuestion 
]
