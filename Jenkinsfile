pipeline {

  agent any

  stages {

    stage ('build-app') {
      when {
        environment name: 'BUILD', value: 'true'
      }
      steps {
        build job: 'build-app', parameters: [
          string(name: 'VERSION', value: "${env.VERSION}"),
          string(name: 'APPLICATION', value: "${env.APPLICATION}"),
          string(name: 'ENVIRONMENT', value: "${env.ENVIRONMENT}")
         ]
      }
    }

    stage ('deploy-app') {
      when {
        environment name: 'DEPLOY', value: 'true'
      }
      steps {
        build job: 'deploy-app', parameters: [
          string(name: 'VERSION', value: "${env.VERSION}"),
          string(name: 'APPLICATION', value: "${env.APPLICATION}"),
          string(name: 'ENVIRONMENT', value: "${env.ENVIRONMENT}")
        ]
      }
    }

    stage ('test-app') {
      when {
        environment name: 'TEST', value: 'true'
      }
      steps {
        build job: 'test-app', parameters: [
          string(name: 'VERSION', value: "${env.VERSION}"),
          string(name: 'APPLICATION', value: "${env.APPLICATION}"),
          string(name: 'ENVIRONMENT', value: "${env.ENVIRONMENT}")
       ]
      }
    }

    stage ('upgrade-version') {
      when {
        environment name: 'UPGRADE', value: 'true'
      }
      steps {
        build job: 'update-version', parameters: [
          string(name: 'VERSION', value: "${env.VERSION}"),
          string(name: 'APPLICATION', value: "${env.APPLICATION}"),
          string(name: 'ENVIRONMENT', value: "${env.ENVIRONMENT}")
        ]
      }
    }
  }
}

