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

        stage('add npm install and run') {
          steps {
            sh '''sh \'\'\'
sudo apt update
# Install Node.js and npm
sudo apt install -y nodejs npm
node -v
npm -v
\'\'\''''
          }
        }

      }
    }

  }
}