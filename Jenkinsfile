pipeline {
    agent any
    tools {
        JDK 'jdk11'
        Maven 'maven3'
    }
    
    stages {
        stage('Git Checkout') {
            steps {
                git(
                    branch: 'main',
                    credentialsId: 'ce9b8f1b-cffd-4ac7-8f1d-998990ae39db',
                    url: 'https://github.com/nchaithanyakoushi/jenkins_java_dep.git'
                )
            }
        }
        
        stage('Compile') {
            steps {
                    echo 'Hello World'
            }
        }
    }
}
