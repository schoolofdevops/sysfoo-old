pipeline {
  agent any
  tools {
      maven "Maven 3.6.3"
  }
  stages{
      stage("build"){
          steps{
              echo 'running build'
              sh 'mvn compile'
          }
      }
      stage("test"){
          steps{
              echo 'running test'
              sh 'mvn clean test'
          }
      }
      stage("package"){
          steps{
              echo 'running package'
              sh 'mvn package -DskipTests'
          }
      }
  }

  post{
    always{
        echo 'This pipeline is completed..'
    }
  }
}