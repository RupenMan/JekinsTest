pipeline {
  agent any
  stages {
    stage ('build') {
      git url: 'https://github.com/RupenMan/JekinsTest.git'
      withMaven {
        sh 'mvn clean install'
      }
    }
  }
}