pipeline {
  agent any
  stages {
    stage('ChechOut Code') {
      steps {
        git(url: 'https://github.com/DaniTan6/myproject', branch: 'main')
      }
    }

    stage('Log') {
      steps {
        sh 'ls -la'
      }
    }

  }
}