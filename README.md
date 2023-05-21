# php-xdebug-docker
Flip between non xdebug local dev (much fast) to xdebug local dev (not fast but much insights) 
at the flick of a cookie (single click via xdebug browser extension). by @jenkoian

## Setup

Full guide available at https://strayobject.medium.com/php-docker-and-xdebug-v3-with-no-performance-loss-9d0f49ac53ba

1. Create a docker network:
`docker network create --subnet=192.168.50.0/24 pxd-docker`
2. Add `127.0.0.1 php-xdebug-docker` to your hosts file.  
3. Run `docker-compose up -d` to start the env
4. Open index.php in editor and add a breakpoint on line 6
5. Open your browser, set up the plugin from the list: https://www.jetbrains.com/help/phpstorm/browser-debugging-extensions.html
6. In browser navigate to https://php-xdebug-docker and turn on the extension.
7. Reload the page (breakpoint should be triggered in the code editor)

**Note**: To see the breakpoint triggered via cli, you need to execute your commands in the app_xdebug container.

`docker-compose exec app_xdebug php index.php`

To regenerate the ssl cert and key run `bash docker/bin/keyregen.sh` from the project root.

Enjoy!
