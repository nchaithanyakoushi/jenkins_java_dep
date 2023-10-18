pipeline {
    agent any
    tools {
        jdk 'jdk'
        maven 'Maven'
        docker 'Docker'
        
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
        stage('build') {
            steps {
                sh "mvn clean package -DskipTests=true"
            }
        }
        stage('Docker push to Jfrog') {
            steps {
                withDockerRegistry(credentialsId: '673da50a-7a06-48a1-9e04-3c250bd249e6', toolName: 'Docker') {}
                    // docker file
                    docker.build('my-project:latest')
                    docker.push('my-project:latest')
                    // sh "docker tag helloworld helloworld:latest
               echo 'docker image push to jfrog' 
                    
            }
        }
        
        stage('Deploying') {
            steps {
               echo 'Deploying' 
                   
            }
    }
}
}

