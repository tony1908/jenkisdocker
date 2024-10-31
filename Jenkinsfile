pipeline {
    agent {
        docker { image 'node:22.11.0-alpine3.20' }
    }
    environment {
        DOCKER_IMAGE_NAME = 'local-node-app'  // Name for the locally built Docker image
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image using the Dockerfile in the project
                    docker.build(DOCKER_IMAGE_NAME, '-f Dockerfile .')
                }
            }
        }
    }
}