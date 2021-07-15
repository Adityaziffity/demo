pipeline {
    agent any
    options { skipDefaultCheckout() }
    environment {
      projectname = "magento"
    }
    stages {
        stage ('dev environment') {
            steps {
              sh'''
                    echo "this is  deployment area"
                    ssh -i /var/jenkins_home/.ssh/id_rsa -i /var/jenkins_home/.ssh/id_rsa-o "StrictHostKeyChecking=no" ubuntu@3.109.11.112 'sudo bash /home/ubuntu/deploy.sh'
                '''
            }
        }
    }
}
