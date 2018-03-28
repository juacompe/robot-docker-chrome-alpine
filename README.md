# Running pybot in docker based on Alpine image


Based on work by <https://github.com/eficode/robotframework-selenium>.

See also <https://github.com/juacompe/docker-robot-framework>

# Build image

    docker build -t robot-framework-alpine .

# Run tests

    docker run --rm -it -v `pwd`/example:/tests -v `pwd`/robot_result:/out robot-framework-alpine -d /out -v headless:n tests/*.robot
