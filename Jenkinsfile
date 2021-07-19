pipeline {
    agent any
    environment {
        FULL_PATH_BRANCH = "${sh(script:'git name-rev --name-only HEAD', returnStdout: true)}"
        GIT_BRANCH = FULL_PATH_BRANCH.substring(FULL_PATH_BRANCH.lastIndexOf('/') + 1, FULL_PATH_BRANCH.length())
    }
    stages {
      stage('main') {   
        when { branch 'main' }
        steps {
            sh'''
                echo "this is  deployment area"
                ssh -i /var/jenkins_home/.ssh/id_rsa -o "StrictHostKeyChecking=no" ubuntu@13.234.238.226 'sudo bash /home/ubuntu/deploy.sh'
            '''
        }
      }
      stage('dev') {   
           when { branch 'dev' }
            steps {
              sh'''
                    echo "this is  deployment area"
                    ssh -i /var/jenkins_home/.ssh/id_rsa -o "StrictHostKeyChecking=no" ubuntu@3.109.11.112 'sudo bash /home/ubuntu/deploy.sh'
                '''
        }
      }
        stage('test') {   
            when { branch 'test' }
            steps {
                sh'''
                    echo "this is  deployment area"
                    ssh -i /var/jenkins_home/.ssh/id_rsa -o "StrictHostKeyChecking=no" ubuntu@13.234.17.0 'sudo bash /home/ubuntu/deploy.sh'
                '''
        }
      }
   }
}
