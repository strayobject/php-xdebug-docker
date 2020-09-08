# php-xdebug-docker
Flip between non xdebug local dev (much fast) to xdebug local dev (not fast but much insights) at the flick of a cookie (single click via xdebug browser extension). by @jenkoian

Setup

1. Create a docker network:
`docker network create --subnet=192.168.50.0/24 pxd-docker`
2. Add `127.0.0.1 php-xdebug-docker` to your hosts file.  
3. Run `docker-compose up -d` to start the env
