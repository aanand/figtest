
socat TCP-LISTEN:8080,bind=127.0.0.1,reuseaddr,fork,range=127.0.0.0/8 UNIX-CLIENT:/docker.sock &
curl http://localhost:8080/containers/json?all=1
