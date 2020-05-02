pipeline {
  agent any
  stages {
     stage('Lint HTML') {
              steps {
                  sh 'tidy -q -e *.html'
              }
         }
		 stage('Lint Dockerfile') {
          steps {
                script {
                    docker.image('hadolint/hadolint:latest-debian').inside() {
                            sh 'hadolint Dockerfile'
                    }
                }
            }
        }
	stage('Security Scan') {
              steps { 
                 aquaMicroscanner imageName: 'alpine:latest', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
              }
         }         
        stage('Build Docker image') {
      steps {	      
      sh 'docker build --build-arg APP_PORT=80 --tag=mohmagdy1016/udacitycapstoneproject .'
      }
    }
   stage('login to docker hub') {
   steps{
   withCredentials([usernamePassword(credentialsId: 'dockerhubusr', passwordVariable: 'dockerhubusrPassword', usernameVariable: 'dockerhubusrUser')]) {
	     	sh "docker login -u ${env.dockerhubusrUser} -p ${env.dockerhubusrPassword}"
   }
   }
   }
   stage('Upload Image to docker hub') {
      steps {
	       sh "./upload_docker.sh"
      }
    }
   stage('kubernetes deployment') {
	   steps {
		   withAWS(credentials: 'Devops', region: 'us-east-2') {
                 sh 'aws eks update-kubeconfig --name CapstoneEKS-trEqHpGliSRH'
	               sh 'kubectl set image deployments/ngnix-deployment *=mohmagdy1016/udacitycapstoneproject'
                 sh 'kubectl apply -f app-deployment.yml'
                 sh 'kubectl get nodes'
                 sh 'kubectl get pods'
	            
}
	   }
    }

   stage('Cleaning up') {
      steps {
      sh 'docker system prune -f'
    }
   }
  }
}
