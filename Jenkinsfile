pipeline {
  environment {
    JAVA_OPTION_TOOLS = '-Duser.home=/home/jenkins'
    REMOTE_SERVER_USER_CREDENTIALS = credentials('remote-server-connector-id')
  }
  agent any

  stages {
    stage ('Build Project') {
      steps {
        sshagent(credentials: ['remote-server-connector-id']) {
          sh '''
            pwd
            cd $HOME
            cd /home/rupendra
            ls
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