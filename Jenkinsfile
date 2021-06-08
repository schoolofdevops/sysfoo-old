pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        echo 'running build'
        sh 'mvn compile'
        echo 'Another print message'
      }
    }

    stage('test') {
      steps {
        echo 'running test'
        sh 'mvn clean test'
      }
    }

    stage('package') {
      steps {
        echo 'running package'
        sh 'mvn package -DskipTests'
        archiveArtifacts 'target/*.war'
      }
    }

  }
  tools {
    maven 'Maven 3.6.3'
  }
  post {
    always {
      echo 'This pipeline is completed..'
    }

  }
}