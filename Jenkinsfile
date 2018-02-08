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

    stage('pre:build') {
      steps {
        sh 'cp src/environments/environment.ts src/environments/environment.prd.ts'
        sh 'yarn run build --output-path=dist/frontend-prd'
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
