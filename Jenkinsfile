pipeline {
  agent {
    docker {
      image 'maven:3.6.3-jdk-11-slim'
    }

  }
  stages {
    stage('build') {
      parallel {
        stage('build') {
          steps {
            echo 'compile maven app'
            echo 'Ashish Gupta 4'
            sh 'mvn compile'
            sleep 100
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