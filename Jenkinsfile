pipeline {
    agent any
    
    parameters { 
        string(name: 'DOCKER_IMAGE_NAME', defaultValue: 'nodejs', description: 'Adicionar um nome a imagem docker')
        string(name: 'DOCKER_CONTAINER_NAME', defaultValue: 'nodejs', description: 'Adicionar um nome do container')
    }
    stages {
        stage ('build Docker Image') {
                agent any
                steps {
                        sh ' bash if [ ! (docker ps -q -f name"${DOCKER_CONTAINER_NAME}") ]; then
                            if [ (docker ps -aq -f status=exited -f name="${DOCKER_CONTAINER_NAME}")" ]; then
                            # cleanup
                            docker rm ${DOCKER_CONTAINER_NAME}'
                }
            }
            stage ('Run Docker Container') {
                agent any
                when {
                    sh ' docker ps -q -f name"${DOCKER_CONTAINER_NAME}"'
                }
                steps {
                    sh 'docker rm ${DOCKER_CONTAINER_NAME}'
                }
                when {
                    ' docker ps -q -f name"${DOCKER_CONTAINER_NAME}" == null '
                }
                steps {
                    sh 'docker run -d -p 3000:3000 --name "${DOCKER_CONTAINER_NAME}" "${DOCKER_IMAGE_NAME}"'
                }
            }
        }
    }