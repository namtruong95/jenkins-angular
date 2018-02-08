pipeline {
  agent {
    docker 'node:8.9'
  }

  options {
    disableConcurrentBuilds()
  }

  stages {
    stage('install') {
      steps {
        sh 'yarn install'
      }
    }

    stage('linter') {
      steps {
        sh 'yarn run lint'
      }
    }
  }

  post {
    success {
      echo "success"
    }
    failure {
      echo "failure"
    }
    unstable {
      echo "unstable"
    }
    aborted {
      echo "aborted"
    }
  }
}
