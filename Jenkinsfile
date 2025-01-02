pipeline {
  agent any
  stages {
    stage('ChechOut Code') {
      steps {
        git(url: 'https://github.com/DaniTan6/myproject', branch: 'main')
      }
    }

    stage('Log') {
      parallel {
        stage('Log') {
          steps {
            sh 'ls -la'
          }
        }

        stage('Front-End Unit Test') {
          steps {
            sh 'cd /home/react-app && npm i && npm run test:unit'
          }
        }

      }
    }

  }
}