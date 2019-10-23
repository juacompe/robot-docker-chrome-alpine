# Running pybot in docker based on Alpine image

[![Build Status](https://travis-ci.org/juacompe/robot-docker-chrome-alpine.svg?branch=master)](https://travis-ci.org/juacompe/robot-docker-chrome-alpine)

Based on work by <https://github.com/eficode/robotframework-selenium>. This repo is for Selenium2Library (version 2) because my team is using it.

See also <https://github.com/juacompe/docker-robot-framework>

# Build image

    docker build -t robot-framework-alpine .

# Run tests

    docker run --rm -it -v "$(pwd)/example":/tests -v "$(pwd)/robot_result":/out robot-framework-alpine -d /out "tests/*.robot"

# Dockerhub

<https://hub.docker.com/r/juacompe/robot-docker-chrome-alpine/>

# Image size

    ➜  robot-docker-chrome-alpine git:(master) docker images
    REPOSITORY                    TAG                 IMAGE ID            CREATED             SIZE
    robot-framework-alpine        latest              0b6b92fad809        11 minutes ago      439MB

# Credit

* [Vitty](https://th.linkedin.com/in/vitty)
* [Eficode](https://github.com/eficode/)
* [Paul Podgorsek](https://github.com/ppodgorsek/)
