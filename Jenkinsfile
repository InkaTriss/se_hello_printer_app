pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
	            sh 'make deps'
		}
	}
	stage('Test') {
	     steps {
	            sh 'make test'
        	}
        }
    }
}
