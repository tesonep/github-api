requests
url

	^ self baseUrl / ('/repos/{owner}/{repo}/statuses/{sha}' format: { 
		'owner' -> owner.
		'repo'  -> repository.
		'sha' -> commit } asDictionary)