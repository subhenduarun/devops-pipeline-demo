pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "subhendu083/node-app:latest"
    }

     /*stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/subhenduarun/your-repo.git'
            }
        }*/

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-creds', url: '']) {
                    script {
                        docker.image(DOCKER_IMAGE).push()
                    }
                }
            }
        }
    }
}
