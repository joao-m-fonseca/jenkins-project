pipeline {
    agent any
    
    environment { 
        FILE_NAME = 'newFile.txt'
        FILE_NAME_MY_ARCHIVE = 'myarchive.txt'
        ZIP_FILE_NAME = 'textfiles.zip'
    }
    stages {
        stage ('Parallel Stage') {
            parallel {
            stage ('Create File 1') {
                agent any
                steps {
                    writeFile file: "$FILE_NAME", text: 'hello write file'
                }
            }
            stage ('Create myarchive') {
                agent any
                steps {
                    writeFile file: "$FILE_NAME_MY_ARCHIVE", text: 'hello write file, I am John'
                }
            }
        }
    }
        stage('Archive Artifact .zip File') {
            steps {
                zip archive: true, dir: '', glob: '', zipFile: "$ZIP_FILE_NAME"
            }
        }
    }
}
