# Recruitment assessment
## Building docker container
1. Ensure you have installed and running docker
2. Ensure you have gnu make installed
3. type `make build` - it will build docker container with tag "cisco"
4. type `make run` - it will run previously built docker image and expose port 8000 to local machine
## Avaliable endpoints
* /info
  - accepts GET requests, return plain text response
* /ping
  - accepts POST requests with `url` field, which will be assumed as valid http(s) address, and returns content of this website as plaintext
* /docs
  - serves swagger view with enpoints documentation