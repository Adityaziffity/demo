pipeline {
    agent any
    options { skipDefaultCheckout() }
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
