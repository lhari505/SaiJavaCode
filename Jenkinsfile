pipeline {
  agent any
  stages {
    stage('checkout scm') {
      parallel {
        stage('checkout scm') {
          steps {
            echo 'pull from git'
          }
        }

        stage('chech pom.xml') {
          steps {
            echo 'pom.xml'
          }
        }

      }
    }

    stage('build') {
      parallel {
        stage('build') {
          steps {
            sh 'mvn clean package'
          }
        }

        stage('build dev') {
          steps {
            echo 'building dev'
          }
        }

      }
    }

    stage('test') {
      steps {
        sh 'mvn test'
      }
    }

    stage('deploy') {
      steps {
        echo 'using docker'
      }
    }

  }
  tools {
    maven 'M2_HOME'
  }
}