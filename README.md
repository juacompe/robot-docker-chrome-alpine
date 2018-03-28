# Running pybot in docker based on Alpine image

[![Build Status](https://travis-ci.org/juacompe/robot-docker-chrome-alpine.svg?branch=master)](https://travis-ci.org/juacompe/robot-docker-chrome-alpine)

Based on work by <https://github.com/eficode/robotframework-selenium>.

See also <https://github.com/juacompe/docker-robot-framework>

# Build image

    docker build -t robot-framework-alpine .

# Run tests

    docker run --rm -it -v `pwd`/example:/tests -v `pwd`/robot_result:/out robot-framework-alpine -d /out tests/*.robot

# Image size

    ➜  robot-docker-chrome-alpine git:(master) docker images
    REPOSITORY                    TAG                 IMAGE ID            CREATED             SIZE
    robot-framework-alpine        latest              4b0c9f35bdba        16 minutes ago      307MB

# Credit

* [Vitty](https://th.linkedin.com/in/vitty)
* [Eficode](https://github.com/eficode/)
* [Paul Podgorsek](https://github.com/ppodgorsek/)
