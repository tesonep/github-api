request
requestTo: aZnClient 
	
	aZnClient 
		contents: (STONJSON toString: self contents);
		contentType: 'application/json;charset=utf-8';
		post 