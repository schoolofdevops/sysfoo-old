pipeline {
  docker {
        label 'docker'
        image 'python:3.7'
    }
  tools {
    maven 'MyMaven'
  }
  stages {
    stage('build') {
      parallel {
        stage('build') {
          steps {
            echo 'compile maven app'
            echo 'Ashish Gupta'
            sh 'mvn compile'
            sleep 180
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
  
}
