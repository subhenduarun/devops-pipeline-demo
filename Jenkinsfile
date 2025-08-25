pipeline:
  agent:
    label: any

  environment:
    IMAGE_NAME: "subhendu083/node-app"
    IMAGE_TAG: "latest"

  stages:
    - stage: Checkout Code
      steps:
        - checkout:
            scm:
              git:
                url: "https://github.com/subhenduarun/devops-pipeline-demo"
                branch: "main"

    - stage: Build Docker Image
      steps:
        - sh: |
            docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .

    - stage: Push to Docker Hub
      steps:
        - withDockerRegistry:
            credentialsId: "docker-hub-creds"
            url: ""
            steps:
              - sh: |
                  docker push ${IMAGE_NAME}:${IMAGE_TAG}
