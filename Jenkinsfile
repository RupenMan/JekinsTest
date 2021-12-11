pipeline {
  agent any
  stages {
    stage ('build') {
      steps {
        sh "echo Building Jenkins Project"
        sh "mvn clean build"
      }
    }
  }
}