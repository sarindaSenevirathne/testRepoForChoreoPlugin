import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "testComp",
	id: "testComp-56b151a0-e54b-4a92-b8cc-12985d719d2e"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
