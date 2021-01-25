pipeline {
    agent any

    stages {
        stage('INSTALL') { 
            steps {
                sh 'npm install' 
            }
        }
        stage('BUILD'){
            steps {
                sh 'npm run build'
            }
        }
    }
}
