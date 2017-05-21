import vibe.vibe;

import blogd.rest.restapi;

version(unittest) {}
else {
	void main() {
		auto router = new URLRouter;
		router.registerRestInterface(new RestApi);

		auto settings = new HTTPServerSettings;
		settings.port = 8080;
		settings.bindAddresses = ["::1", "0.0.0.0"];
		listenHTTP(settings, &hello);

		logInfo("REST server application running...");
		runApplication();
	}
}

void hello(HTTPServerRequest req, HTTPServerResponse res) {
	res.writeBody("Hello, World!");
}

@("failing")
unittest {
	assert(1==2);
}
