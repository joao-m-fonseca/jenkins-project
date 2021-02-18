pipeline {
    agent any
    
    parameters { 
        string(name: 'DOCKER_IMAGE_NAME', defaultValue: 'nodejs', description: 'Adicionar um nome a imagem docker')
        string(name: 'DOCKER_CONTAINER_NAME', defaultValue: 'nodejsv0.1', description: 'Adicionar um nome do container')
    }
    stages {
        stage ('build Docker Image') {
                agent any
                steps {
                    sh 'docker build -t "${DOCKER_IMAGE_NAME}" .'
                }
            }
            stage ('Run Docker Container') {
                agent any
                steps {
                    sh 'docker run -d -p 3000:3000 "${DOCKER_CONTAINER_NAME}"'
                }
            }
        }
    }