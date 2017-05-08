module blogd.rest.irestapi;

import vibe.vibe : path;

import blogd.data.models.post;

interface IRestApi {
	Post[] queryPosts();
	Post queryPosts(long id);
	void postAuth();
}
