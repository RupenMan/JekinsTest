pipeline {
  agent any
  stages {
    stage ('Build') {
      node {
        git url: 'https://github.com/RupenMan/JekinsTest.git'
        withMaven {
          sh 'mvn clean install'
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