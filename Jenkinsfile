node {
  stage ('Build') {
        git url: 'https://github.com/RupenMan/JekinsTest.git'
        withMaven {
          sh 'mvn clean install'
      }
   }
   stage ('Deploy') {
     withMaven {
      sh 'mvn spring-boot:run'
     }
   }
}