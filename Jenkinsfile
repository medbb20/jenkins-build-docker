node {
    def app

    stage('clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("babba/nginx")
    }

    stage('Run image') {
        // Run the Docker container
        sh 'docker run -d -p 80:80 --name babba/nginx'
        
        // Add a delay to allow Nginx to fully start
        sh 'sleep 5'
        
        // Check running containers
        sh 'docker ps'
        
        // Test by making a request to the localhost
        sh 'curl localhost'
    }
}

