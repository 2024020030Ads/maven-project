pipeline {
    agent any

    stages {
        stage('Build Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Check Docker') {
            steps {
                sh 'docker version'
                sh 'docker ps'
            }
        }
    }
}
