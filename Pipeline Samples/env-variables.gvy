pipeline {
    agent any

    environment {
        NAME = 'Jenkins'
        LASTNAME = 'Master'
    }

    stages {
        stage('Build') {
            steps {
                sh 'echo $NAME $LASTNAME'
            }
        }
    }
}