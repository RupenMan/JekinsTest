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
    stage ('Build') {
      steps {
        sh "chmod +x ./scripts/deploy-service.sh"
      }
    }
  }

  post {
    always {
      cleanWs()
    }
  }

}