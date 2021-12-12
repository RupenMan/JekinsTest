!/bin/bash

mvn --version
mvn clean install
mvn dockerfile:build
mvn dockerfile:push