pipeline {
  environment {
    JAVA_OPTION_TOOLS = '-Duser.home=/home/rupendra'
  }
  agent {
    docker {
      image 'maven:3.6.0-jdk-11'
      args '-v /tmp/maven:/home/rupendra/.m2 -e MAVEN_CONFIG=/home/rupendra/.m2'
    }
  }

  stages {
    stage ('Build') {
      steps {
        sh "apt-get install yum"
        sh "yum install openssh-clients"
        sh "ssh -V"
        sh "mvn -version"
        sh "mvn clean install"
      }
    }
  }

  post {
    always {
      cleanWs()
    }
  }

}