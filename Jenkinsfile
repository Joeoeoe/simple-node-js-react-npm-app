pipeline {
    agent any

    stages {
        stage('BUILD'){
            steps {
                sh 'docker build --tag test:lts .'
            }
        }
    }
}
