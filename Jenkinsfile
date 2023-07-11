pipeline {
    agent any

    stages {
        stage("Installing") {
            steps {
                echo("Installing...")
                sh 'npm install'
            }
        }

        stage("Running") {
            steps {
                echo("Running...")
                sh 'npm start'
            }
        }
    }
}