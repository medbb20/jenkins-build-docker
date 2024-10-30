node {
    def app

    stage('clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("babba/nginx")
    }

    stage('Run image') {
        // Remove any existing container named nginx_container to avoid name conflicts
        sh 'docker rm -f nginx_container || true'
        
        // Run the Docker container
        sh 'docker run -d -p 80:80 --name nginx_container babba/nginx'
        
        // Add a delay to allow Nginx to fully start
        sh 'sleep 10'
        
        // Check running containers
        sh 'docker ps'
        
        // Check the container logs for any issues
        sh 'docker logs nginx_container'
        
        // Test by making a request to the localhost
        sh 'curl localhost'
    }
}


