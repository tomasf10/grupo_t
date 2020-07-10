Class {
	#name : #Reversal,
	#superclass : #Object,
	#category : #'IS2-GameTP1'
}

{ #category : #operation }
Reversal >> applyEffect: selfCard toThis: playerOrCard inThe: game [
	selfCard assignedToAnyPlayer.
	selfCard assignedTo addAll: game players options.
	
	game activePermanentCards addLast: selfCard.
]

{ #category : #effect }
Reversal >> extraMoves [
	^0.
]

{ #category : #query }
Reversal >> isPermanent [
	^true
]

{ #category : #query }
Reversal >> reverse [
	^true
]