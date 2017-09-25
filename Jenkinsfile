pipeline {
    agent any
    stages {
        stage ('Compile Stage') {
            steps {
                withMaven(maven : 'maven3.5') {
                    sh 'mvn clean compile'
                }
            }
        }
        stage ('Package Stage') {
            steps {
                withMaven(maven : 'maven3.5') {
                    sh 'mvn build'
                }
            }
        }
    }
}