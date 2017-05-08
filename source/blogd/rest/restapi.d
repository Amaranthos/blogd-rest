module blogd.rest.restapi;

import blogd.rest.irestapi;
import blogd.data.models.post;

/**
* RestApi
*/
class RestApi : IRestApi {
	this() {

	}

	/**
	* GET /posts returns all posts
	*/
	Post[] queryPosts() {
		return [];
	}

	Post queryPosts(long id){
		return Post.init;
	}

	void postAuth() {

	}
}

version(unittest) { import unit_threaded; }

@("GET /posts should return all posts")
unittest {
	import std.stdio;
	writeln("in side test");
	import vibe.vibe;

	auto router = new URLRouter;
	router.registerRestInterface(new RestApi);

	auto res = createTestHTTPServerResponse();
	router.handleRequest(createTestHTTPServerRequest(URL("http://localhost/posts")), res);
	assert(res.statusCode == 400);
}
