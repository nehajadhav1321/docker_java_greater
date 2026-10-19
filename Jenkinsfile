pipeline{
	agent any
	
	environment{
		DOCKER_IMAGE = 'greater'
	}
	stages{
		stage('Checkout'){
			steps{
				git branch : 'main', url: 'https://github.com/nehajadhav1321/docker_java_greater.git'
			}
		}
		stage('Docker Build'){
			steps{
				script{
					if (fileExists('Dockerfile')){
						sh "docker build -t ${env.DOCKER_IMAGE} . "
					}
					else{
						error "Dockerfile not found in the workspace. Please create one."
					}
				}
			}
		}
		stage('Docker Run (Optional)'){
			steps {
				sh "docker run --rm ${env.DOCKER_IMAGE}"
			}
		}
	}
	post {
		success{
			echo "Python application ocker image built successfully."
		}
		failure{
			echo "Docker build or run failed."
		}
	}
}
