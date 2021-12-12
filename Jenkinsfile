pipeline {
  environment {
    JAVA_OPTION_TOOLS = '-Duser.home=/home/jenkins'
  }
  agent {
    dockerfile {
      args '-v /tmp/maven:/home/jenkins/.m2 -e MAVEN_CONFIG=/home/jenkins/.m2'
    }
  }

  stages {
    stage ('Build Project') {
      steps {
        sh "chmod +x ./scripts/deploy-service.sh"
        sh "./scripts/deploy-service.sh"
      }
    }
    stage ('Build Docker Image') {
      sh "whoami"
      sh "ls -all /var/run/docker.sock"
      sh "mv ./target/test*.jar ./data"
      dockerImage = docker.build("test")
    }
    stage('Deploy Docker Image'){

      echo "Docker Image Tag Name: ${dockerImageTag}"
    }
  }

  post {
    always {
      cleanWs()
    }
  }

}