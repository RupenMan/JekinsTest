pipeline {
  environment {
    JAVA_OPTION_TOOLS = '-Duser.home=/home/jenkins'
    REMOTE_SERVER_USER_CREDENTIALS = credentials('remote-server-connector-id')
  }
  agent any

  stages {
    stage ('Build Project') {
      steps {
        sh 'mvn clean install'
        sh 'pwd'
      }
    }
    stage ('Build Image') {
      steps {
        sshagent(credentials: ['remote-server-connector-id']) {
          sh '''
              chmod +x ./scripts/deploy-service.sh
              ./scripts/deploy-service.sh
            '''
        }
      }
    }


  }

  post {
    always {
      cleanWs()
    }
  }

}