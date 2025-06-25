pipeline {
    agent any

    environment {
        IMAGE_NAME = 'mauricio/app-clase5'
    }

    stages {
        stage('Clonar código') {
            steps {
                git branch: 'main', url: 'https://github.com/MauricioTinco/clase-5-pipeline.git'
            }
        }

        stage('Construir imagen Docker') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Listar imágenes') {
            steps {
                sh 'docker images'
            }
        }

        stage('Ejecutar contenedor') {
            steps {
                sh 'docker run -d --name contenedor-prueba -p 8081:80 $IMAGE_NAME'
            }
        }
    }

    post {
        always {
            echo 'Limpieza de contenedor si existe...'
            sh 'docker rm -f contenedor-prueba || true'
        }
    }
}
