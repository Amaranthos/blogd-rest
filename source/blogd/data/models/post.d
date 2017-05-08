module blogd.data.models.post;

/**
 * Post
 */
struct Post {
	long id;
	string title;
	string content;
	string[] tags;
}
