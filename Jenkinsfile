pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        echo 'compile maven app'
        echo 'Ashish Gupta'
        sh 'mvn compile'
      }
    }

    stage('test') {
      steps {
        echo 'test maven app'
        sh 'mvn clean test'
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