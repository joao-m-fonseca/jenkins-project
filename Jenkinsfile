pipeline {
    agent any
    
    parameters { 
        string(name: 'DOCKER_IMAGE_NAME', defaultValue: 'nodejs', description: 'Adicionar um nome a imagem docker')
        string(name: 'DOCKER_CONTAINER_NAME', defaultValue: 'nodejs', description: 'Adicionar um nome do container')
    }
    stages {
        stage ('CleanResources') {
            agent any
            steps
            {
                cleanWs()
            }
        }
        stage ('Build Docker Image') {
                agent any
                steps {
                        docker.build("${params.DOCKER_IMAGE_NAME}", ".")
                }
            }
            stage ('Run Docker Container') {
                agent any
                steps {
                    docker.image("${params.DOCKER_IMAGE_NAME}").withRun("-p 3000:3000")
                }
            }
        }
    }