pipeline {
    agent {
        dockerfile { 
            filename "Dockerfile"
            args "-u root:root"
        }
    }
    environment {
        OS_AUTH_URL  = 'https://auth.cloud.ovh.net/v3'
        OS_TOKEN     = "${params.TOKEN}"
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'chmod +x /app/build-image.sh'                
                sh '/app/build-image.sh'
            }
        }
    }
}
