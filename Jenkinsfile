pipeline {
    agent any
    tools {
        jdk 'jdk'
        maven 'Maven'
        
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
                sh "mvn clean compile -DskipTests=true"
            }
        }
        stage('dependencyscan') {
            steps {
                dependencyCheck additionalArguments: '--scan ./ --format HTML', odcInstallation: 'dependencycheck'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }
        stage('Sonarscan') {
            steps {
                echo 'Hello World'
            }
        }
    }
}
