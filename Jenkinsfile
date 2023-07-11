pipeline {
    agent any

    stages {
        stage("Installing") {
            steps {
                echo("Installing...")
                npm 'install'
            }
        }

        stage("Running") {
            steps {
                echo("Running...")
                npm 'start'
            }
        }
    }
}