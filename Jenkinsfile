pipeline {
  agent none
  stages {    
    stage('build') {
      
      agent {
        docker {
          image 'maven:3.6.3-jdk-11-slim'
        }

      }
      steps {
        echo env.BRANCH_NAME
        echo 'compile maven app'
        echo 'Ashish Gupta 4'
        sh 'mvn compile'
      }
    }

    stage('test') {
      agent {
        docker {
          image 'maven:3.6.3-jdk-11-slim'
        }

      }
      steps {
        echo 'Testing'
        sh 'mvn clean test'
      }
    }

    stage('package war and docker')
    {
      when {
          branch 'master'
        }
      parallel {
        stage('package') {
          agent {
            docker {
              image 'maven:3.6.3-jdk-11-slim'
            }

          }
          steps {
            echo 'Packaging'
            sh 'mvn package -DskipTests'
            archiveArtifacts 'target/*.war'
          }
        }

        stage('Docker BnP') {
          when {
            branch 'master'
          }
          agent any
          steps {
            script {
              docker.withRegistry('https://index.docker.io/v1/', 'dockerlogin') {
                def dockerImage = docker.build("ietashish/sysfoo:v${env.BUILD_ID}", "./")
                dockerImage.push()
                dockerImage.push("latest")
                dockerImage.push("dev")
              }
            }

          }
        }
      }
    }
  }
  tools {
    maven 'MyMaven'
  }
}
