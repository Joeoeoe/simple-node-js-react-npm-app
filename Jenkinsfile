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
                sh 'docker build --tag test:lts .'
            }
        }
    }
}
