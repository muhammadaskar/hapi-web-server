pipeline {
    agent any
    
    stages {
        stage('Pull Repositories') {
            steps {
                echo 'Pull Repositories!'
            }
        }
        
        stage('Stop Container') {
            steps {
                echo 'Stopping the running container...'
                sh 'docker stop hapi-web-server || true'
                sh 'docker rm hapi-web-server || true'
                echo 'Container stopped.'
            }
        }
        
        stage('Docker Images') {
            steps {
                echo 'Building Docker images...'
                
                sh 'docker rmi hapi-web-server:latest || true'
                
                echo 'Proses Build'
                sh 'docker build -t hapi-web-server:latest .'
                echo 'Menampilkan hasil images'
                sh 'docker images'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Running the container...'
                sh 'docker run -d --name hapi-web-server -p 3001:4000 hapi-web-server:latest'
                echo 'Container is now running.'
                sh 'docker ps'
            }
        }
    }
}