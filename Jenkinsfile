node{
  def app
    
    stage('clone') {
        checkout scm
    }
    
    stage('Build image') {
        app = docker.build("babba/nginx")
    }
    
    stage('Run image') {
        docker.image('babba/nginx').WithRun('-p 80:80') { c ->
        
        sh 'docker ps'
        
        sh  'curl localhost'
     
    }
    
    }
    
}
