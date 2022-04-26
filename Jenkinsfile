node {

  stage ('Clone'){
    figlet 'SOURCE CONTROL MANAGEMENT'
    checkout scm
  }

  stage('Build'){
    figlet 'BUILD'
    sh "chmod 777 gradlew"
    sh "./gradlew clean build"
    archiveArtifacts artifacts: "build/libs/testing-web-*.jar"
  }
  
  stage('Test'){
    figlet 'TEST UNITARIOS'
    sh "./gradlew clean test"
  }

  stage ('Code Review'){
    sh "Ejecutando .."
  }

  stage ('Image Build'){
    sh "docker build "
  }
}
