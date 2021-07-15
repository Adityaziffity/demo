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
                    ssh -o "StrictHostKeyChecking=no" ubuntu@3.109.11.112 bash /home/ubuntu/scripts/graph.sh
                '''
            }
        }
    }
}
