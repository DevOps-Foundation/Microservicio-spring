node {

  stage ('Clone'){
    checkout scm
  }

  stage('Build'){
    sh "chmod 777 gradlew"
    sh "./gradlew clean build"
    archiveArtifacts artifacts: "build/libs/testing-web-*.jar"
  }
  
  stage('Test'){
    sh "./gradlew clean test"
  }

  stage ('Code Review'){
    sh "Ejecutando .."
  }

  stage ('Image Build'){
    sh "docker build "
  }
}
