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
    sh "./gradlew sonarqube -Dsonar.login=19ff6d5acb1b34e299b77cb7f2307e1615d6f1c5 -Dsonar.branch.name=feature-deploy"
  }
}
