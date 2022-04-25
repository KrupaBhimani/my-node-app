properties([pipelineTriggers([githubPush()])])
pipeline {
    agent any
    stages {
        stage('Checkout SCM') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: 'main']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/KrupaBhimani/my-node-app.git',
                        credentialsId: 'KrupaBhimani',
                    ]]
                ])
            }
        }
        stage('clone') {
            steps {
                sh '''
                    rm -rf my-node-app
                    git clone https://github.com/KrupaBhimani/my-node-app.git
                    
                '''
            }
        }
        stage('build'){
            steps {
                
                sh '''
                    cd my-node-app/
                    docker build -t krupabhimani/docker-test:latest .
                '''
            }
            
        }
        stage('login'){
            steps{
                 sh 'docker login -u krupabhimani -p krupa21900'
            }
        }
        stage('push'){
            steps{
                sh 'docker push krupabhimani/docker-test:latest'
            }
        }
        stage('deploy'){
            steps{
                sh '''
                    docker stop nodeapp
                    docker rm nodeapp
                    docker run --name nodeapp -p 3000:3000 -d krupabhimani/docker-test:latest
                '''
            }
        }
    }
}
