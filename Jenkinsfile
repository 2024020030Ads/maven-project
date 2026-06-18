pipeline {
    agent any

    environment {
        IMAGE_NAME = "java-webapp"
        CONTAINER_NAME = "java-webapp-container"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Maven (WAR)') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${IMAGE_NAME}:latest ."
            }
        }

        stage('Stop Old Container') {
            steps {
                sh "docker rm -f ${CONTAINER_NAME} || true"
            }
        }

        stage('Run Container') {
            steps {
                sh """
                docker run -d \
                --name ${CONTAINER_NAME} \
                -p 8181:8080 \
                ${IMAGE_NAME}:latest
                """
            }
        }

    }

    post {
        success {
            echo "Deploy concluído com sucesso!"
        }
        failure {
            echo "Falha no pipeline"
        }
    }
}
