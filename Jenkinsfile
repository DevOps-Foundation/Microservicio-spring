pipeline {
    agent any 
    stages {
        stage('Git') {
            steps {
                checkout scm 
                //checkout([$class: 'GitSCM', branches: [[name: '*/feature-deploy']], extensions: [], userRemoteConfigs: [[credentialsId: 'clagosu', url: 'https://github.com/Devops-Foundation/microservicio-spring.git']]])
            }
          }
        stage('Build') {
            steps {
                sh 'chmod 777 gradlew'
                sh './gradlew clean build'
                archiveArtifacts artifacts: "build/libs/testing-web-*.jar"
            }
          }
      stage('Code Quality') {
            steps {
                //sh "set +x; ./gradlew sonarqube -Dsonar.login=${SONAR_TOKEN} -Dsonar.branch.name=feature-deploy"
                echo 'Hello'
            }
        }
        stage('Image Build') {
            steps {
                sh 'docker build Dockerfile'
            }
        }
    }
}
