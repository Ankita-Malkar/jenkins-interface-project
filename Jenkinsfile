pipeline {
    agent any

    stages {

        stage('Take Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Ankita-Malkar/jenkins-interface-project.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Build successful (HTML project)'
            }
        }

        stage('Test') {
            steps {
                script {
                    if (isUnix()) {
                        sh './test.sh'
                    } else {
                        bat '.\\test.bat'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    if (isUnix()) {
                        sh 'mkdir -p deployed_project && cp *.html deployed_project'
                    } else {
                        bat '''
                        if not exist deployed_project mkdir deployed_project
                        copy *.html deployed_project
                        '''
                    }
                }
            }
        }
    }
}
