package main

import (
	"fmt"
	"net/http"
)

func helloWorldHandler(w http.ResponseWriter, r *http.Request) {
	// Setting content-type to application/json
	w.Header().Set("Content-Type", "application/json")
	w.Header().Set("Access-Control-Allow-Origin", r.Header.Get("Origin"))
	// Sending Hello World message in JSON format
	fmt.Fprint(w, `{"message": "Hello My Boyyyy"}`)
}

func main() {
	// Assigning the handler to an endpoint
	http.HandleFunc("/helloworld", helloWorldHandler)

	// Start the server on port 8080
	fmt.Println("Server is listening on port 8090...")
	err := http.ListenAndServe(":8090", nil)
	if err != nil {
		fmt.Println("Error starting the server:", err)
	}
}
