pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-key-user')
        AWS_SECRET_ACCESS_KEY = credentials('aws-key-pass')
        AWS_DEFAULT_REGION = "us-east-1"
    }

    stages {
        stage('SCM Init ...') {
            steps {
                git branch: 'main', url: 'https://github.com/MorelSami/Terraform-Eks-Backend.git'
            }
        }
        
        stage ("Terraform  code syntax check ...") {
            steps {
                sh "terraform fmt" 
            }
        }
        
        stage ("Terraform initialization ...") {
            steps {
                sh "terraform init" 
            }
        }
        
        stage ("Terraform validation ...") {
            steps {
                sh "terraform validate" 
            }
        }
  
        stage ("Terraform preview ...") {
            steps {
                sh "terraform plan" 
            }
        }
        stage ("Resource provisioning ...") {
            steps {
                sh 'terraform apply --auto-approve' 
           }
        }
        stage ("Provisioning complete") {
            steps {
                sh 'echo "Terraform backend AWS resources provisioned successfully"' 
           }
        }
    }
}