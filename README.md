# jenkinsfarm
Containerized Jenkins Farm

Requires: Docker (I am using Docker for Mac)

./rundevenv will start the containerized development environment

Then you can build the Jenkins image

```
gulp build
```

Start jenkins images
```
gulp start
```
point browser to http://localhost:8080
initial user/pass is admin/admin

Stop jenkins
```
gulp stop
```

TODO: lots!!  Get jenkins to create slave via kubernetes and create a demo job that
will run a test suite.
