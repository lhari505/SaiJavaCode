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
            echo 'build from maven'
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
        echo 'junit test'
      }
    }

    stage('deploy') {
      steps {
        echo 'using docker'
      }
    }

  }
}