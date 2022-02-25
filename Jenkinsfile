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
        sh 'docker build -t harishl/my-app:1.0.0 .'
      }
    }

  }
  tools {
    maven 'M2_HOME'
  }
}