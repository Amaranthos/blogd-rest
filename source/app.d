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
		listenHTTP(settings, router);

		logInfo("REST server application running...");
		runApplication();
	}
}

version(unittest) { import unit_threaded; }
else { enum ShouldFail; }

@("failing", ShouldFail)
unittest {
	assert(1==2);
}
