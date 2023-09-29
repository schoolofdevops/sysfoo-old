pipeline {
  agent any
  stages {
    stage('build') {
      parallel {
        stage('build') {
          steps {
            echo 'compile maven app'
            echo 'Ashish Gupta'
            sh 'mvn compile'
          }
        }

        stage('test') {
          steps {
            echo 'Testing....'
            sh 'mvn clean test'
          }
        }

      }
    }

    stage('package') {
      steps {
        echo 'package maven app'
        sh 'mvn package -DskipTests'
        archiveArtifacts 'target/*.war'
      }
    }

  }
  tools {
    maven 'MyMaven'
  }
}