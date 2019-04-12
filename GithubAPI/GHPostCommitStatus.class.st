Class {
	#name : #GHPostCommitStatus,
	#superclass : #GHPostRequest,
	#instVars : [
		'commit',
		'state',
		'owner',
		'repository',
		'description',
		'statusURL',
		'context'
	],
	#category : #'GithubAPI-Requests'
}

{ #category : #accessing }
GHPostCommitStatus >> commit [
	^ commit
]

{ #category : #accessing }
GHPostCommitStatus >> commit: anObject [
	commit := anObject
]

{ #category : #accessing }
GHPostCommitStatus >> contents [

	^ { 'state' -> state. 
		 'target_url' -> statusURL.  
		 'description' -> description.
		 'context' -> context	} asDictionary 
]

{ #category : #accessing }
GHPostCommitStatus >> context [
	^ context
]

{ #category : #accessing }
GHPostCommitStatus >> context: anObject [
	context := anObject
]

{ #category : #accessing }
GHPostCommitStatus >> description [
	^ description
]

{ #category : #accessing }
GHPostCommitStatus >> description: anObject [
	description := anObject
]

{ #category : #accessing }
GHPostCommitStatus >> owner [
	^ owner
]

{ #category : #accessing }
GHPostCommitStatus >> owner: anObject [
	owner := anObject
]

{ #category : #accessing }
GHPostCommitStatus >> repository [
	^ repository
]

{ #category : #accessing }
GHPostCommitStatus >> repository: anObject [
	repository := anObject
]

{ #category : #accessing }
GHPostCommitStatus >> state [
	^ state
]

{ #category : #accessing }
GHPostCommitStatus >> state: anObject [
	state := anObject
]

{ #category : #accessing }
GHPostCommitStatus >> statusURL [
	^ statusURL
]

{ #category : #accessing }
GHPostCommitStatus >> statusURL: anObject [
	statusURL := anObject
]

{ #category : #requests }
GHPostCommitStatus >> url [

	^ self baseUrl / ('/repos/{owner}/{repo}/statuses/{sha}' format: { 
		'owner' -> owner.
		'repo'  -> repository.
		'sha' -> commit } asDictionary)
]
