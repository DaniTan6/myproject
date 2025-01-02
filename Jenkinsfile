pipeline {
  agent any
  stages {
    stage('CheckOut Code') {
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

        stage('add npm install and run') {
          steps {
            sh '#!/bin/bash sudo apt update sudo apt install -y nodejs npm node -v npm -v'
          }
        }

      }
    }

  }
}