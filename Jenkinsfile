pipeline {
    agent any
    
    parameters { 
        string(name: 'DOCKER_IMAGE_NAME', defaultValue: 'npdejsapp-v01', description: 'Adicionar um nome a imagem docker')
        string(name: 'DOCKER_CONTAINER_NAME', defaultValue: 'myFile2.txt', description: 'Adicionar um nome do container')
    }
    stages {
        stage ('build Docker Image') {
                agent any
                steps {
                    writeFile file: "${params.FILE_NAME_2}", text: 'hello write file'
                }
            }
            stage ('Run Docker Container') {
                agent any
                steps {
                    writeFile file: "${params.FILE_NAME_MY_ARCHIVE}", text: 'hello write file, I am John'
                }
            }
        }
    }