pipeline {
  environment {
    JAVA_OPTION_TOOLS = '-Duser.home=/home/jenkins'
    REMOTE_SERVER_USER_CREDENTIALS = credentials('remote-server-connector-id')
  }
  agent any

  stages {
    stage ('Build Project') {
      steps {
        sh "chmod +x ./scripts/deploy-service.sh"
        sh "./scripts/deploy-service.sh"
      }
    }
  }

  post {
    always {
      cleanWs()
    }
  }

}