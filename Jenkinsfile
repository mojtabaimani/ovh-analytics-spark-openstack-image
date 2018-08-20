pipeline {
    agent{
        dockerfile{
            args '-u root:root'
        }
    }
    stages{
        
        stage('Build'){
            steps{
                sh 'build-image.sh'
            }
        }
    }
}