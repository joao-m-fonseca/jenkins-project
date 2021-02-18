pipeline {
    agent any
    
    parameters { 
        string(name: 'FILE_NAME', defaultValue: 'myFile.txt', description: 'File name to archive')
        string(name: 'ZIP_FILE_NAME', defaultValue: 'myflize.zip', description: 'File name to archive')
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
                    writeFile file: "${params.FILE_NAME_MY_ARCHIVE}", text: 'hello write file, I am John'
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
