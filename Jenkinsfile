pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'make create-workspace'
                sh 'make install' 
            }
        }
        stage('Test'){
            steps {
                sh 'make test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'make release'
                sh 'make deploy.ghpages'
            }
        }
    }
}