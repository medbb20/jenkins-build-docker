node {
    def app

    stage('clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("babba/nginx")
    }

    stage('Run image') {
        // Run the Docker container with a shell command
        sh 'docker run -d -p 80:80 --name nginx_container babba/nginx'
        
        // Check running containers
        sh 'docker ps'
        
        // Test by making a request to the localhost
        sh 'curl localhost'

        
    }
}
