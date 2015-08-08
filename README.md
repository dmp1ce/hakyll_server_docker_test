# Hakyll server in Docker test

To see if the Hakyll server works in a Docker container first build the 'site' executable.

`docker build -t hakyll_server_docker_test .`

Run the docker container

`docker run --rm -it -p 8000:8000 hakyll_server_docker_test`

Try to access the site via a web browser.

`curl http://127.0.0.1:8000`
