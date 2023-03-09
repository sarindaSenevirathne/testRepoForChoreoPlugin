import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "testComp",
	id: "testComp-56b151a0-e54b-4a92-b8cc-12985d719d2e"
}
service / on new http:Listener(9090) {


    resource function get greeting(string name) returns string|error {
      
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
