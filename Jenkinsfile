pipeline {
  agent any

  stages {
    stage ('Build') {
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