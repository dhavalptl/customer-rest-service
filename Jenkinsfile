pipeline {
    agent any
    stages {
        stage ('Clean Stage') {
            steps {
                withMaven(maven : 'maven3.5') {
                    sh 'mvn clean'
                }
            }
        }
        stage ('Package Stage') {
            steps {
                withMaven(maven : 'maven3.5') {
                    sh 'mvn package'
                }
            }
        }
        stage ('Change Permission') {
            steps {
                sh 'chmod 755 deploy.sh'
            }
        }
        stage ('Deploy and Stop') {
            steps {
                sh './deploy.sh'
            }
        }
        stage ('Run Application') {
            steps {
                sh 'nohup java -jar /Users/dhavalpatel/deploy/develop/customer-service-0.0.1-SNAPSHOT.jar > /Users/dhavalpatel/deploy/develop/server-dev.log 2>&1 &'
            }
        }
    }
}