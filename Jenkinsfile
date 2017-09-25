pipeline {
    agent any
    stages {
        stage ('Clean Package Stage') {
            steps {
                withMaven(maven : 'maven3.5') {
                    sh 'mvn clean package'
                }
            }
        }
        stage ('Deploy, Stop and Start Application') {
            steps {
                sh 'chmod 500 deploy.sh'
                sh './deploy.sh'
            }
        }
    }
}