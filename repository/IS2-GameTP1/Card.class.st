Class {
	#name : #Card,
	#superclass : #Object,
	#instVars : [
		'type',
		'assignedTo',
		'represents'
	],
	#category : #'IS2-GameTP1'
}

{ #category : #'instance creation' }
Card class >> source: aNumberProvider [
	| card |
	card := { Overload new . Speed new . Acceleration new . Cancellation new . Redo new . Repeat new } atRandom: aNumberProvider.
		
	^self type: card.
]

{ #category : #'accessing structure variables' }
Card class >> type: card [
	^self new initializeAs: card.
]

{ #category : #operation }
Card >> applyTo: object in: game [

		assignedTo addLast: object.

		type applyEffect: self toThis: object inThe: game.
]

{ #category : #accessing }
Card >> assignedTo [
	assignedTo
		ifNil: [ Error signal: 'This card has not been assigned to a player yet.' ] 
		ifNotNil: [ ^assignedTo ].
]

{ #category : #operation }
Card >> assignedToAnyPlayer [
	assignedTo := OrderedCollection new.
]

{ #category : #accessing }
Card >> extraMoves [ 
	^type extraMoves.
]

{ #category : #initialization }
Card >> initializeAs: cardType [
	type := cardType.
	assignedTo := OrderedCollection new.
	represents := self.
]

{ #category : #accessing }
Card >> isPermanent [ 
	^type isPermanent.
]

{ #category : #accessing }
Card >> represents [ 
	^represents.
]

{ #category : #accessing }
Card >> represents: thisCard [
	represents := thisCard.
]

{ #category : #operation }
Card >> representsAssignedToAnyPlayer [
	| card |
	card := self represents copy.
	card assignedToAnyPlayer.

	^card.
]

{ #category : #accessing }
Card >> type [
	^type
]
