pipeline {
    agent any
    stages {
        stage('Build HTML Container') {
            steps {
                sh 'docker build -t html-site .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8080:80 html-site'
            }
        }
    }
}
