/*node {
  env.SONAR_TOKEN = '19ff6d5acb1b34e299b77cb7f2307e1615d6f1c5'
  stage ('Clone'){
    println 'Se clona repositorio en Espacio de trabajo'
    checkout scm
  }

  stage('Build'){
    println 'Se realiza build'
    sh "chmod 777 gradlew"
    sh "./gradlew clean build"
    archiveArtifacts artifacts: "build/libs/testing-web-*.jar"
  }
  
  stage('Test'){
    println 'Se ejecutan Test Unitarios'
    sh "./gradlew clean test"
  }

  stage ('Code Review'){
    println 'Se ejecuta Analisis con Sonarcloud'
    sh "set +x; ./gradlew sonarqube -Dsonar.login=${SONAR_TOKEN} -Dsonar.branch.name=feature-deploy"
  }
}*/

pipeline {
    agent any 
    stages {
        stage('Git') {
            steps {
                echo 'Hello world!' 
            }
        stage('Build') {
            steps {
                echo 'Hello world!' 
            }
        stage('Image Build') {
            steps {
                echo 'Hello world!' 
            }
        }
    }
}
