Class {
	#name : #GHGenericGetRequest,
	#superclass : #GHGetRequest,
	#instVars : [
		'url'
	],
	#category : 'GithubAPI-Core'
}

{ #category : #requests }
GHGenericGetRequest >> url [
	^ url
]

{ #category : #accessing }
GHGenericGetRequest >> url: aString [ 
	url := aString
]
