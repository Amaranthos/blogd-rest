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
	Post[] queryPosts() @safe {
		return [];
	}

	/**
	* GET /posts returns post with id
	*/
	Post queryPosts(long id) @safe {
		return Post.init;
	}
}

@("GET /posts should return all posts")
unittest {
	import vibe.vibe;

	auto router = new URLRouter;
	//router.registerRestInterface(new RestApi);

	auto res = createTestHTTPServerResponse();
	auto req = createTestHTTPServerRequest(URL("http://localhost/posts"));
	//router.handleRequest(req, res);
	//assert(res.statusCode == 200);
	//std.stdio.writeln("Hello");
}
