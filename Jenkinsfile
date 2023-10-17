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
        stage('Dependency-Check') {
            steps {
                // You need to configure Dependency-Check to generate reports during the build.
                // This step assumes that Dependency-Check reports have been generated and are available.

                // Archive the Dependency-Check report files to make them accessible for further steps.
                archiveArtifacts artifacts: 'dependency-check-report.xml' // Adjust the report file name as needed

                // Publish the Dependency-Check reports to make them visible in Jenkins.
                publishHTML(target: [
                    allowMissing: true,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: 'target/dependency-check-report',
                    reportFiles: 'dependency-check-report.xml' // Adjust the report file name as needed
                ])
            }
        }
    }
}
