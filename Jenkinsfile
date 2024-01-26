pipeline{
    agent any
    environment{
        AWS_ACCESS_KEY_ID=credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY=credentials('AWS_SECRET_ACCESS_KEY')
        region="ap-south-1"
    }
    stages{
        stage('Checkout SCM'){
            steps{
                script{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mmurali12/Terraform-with-jenkins-for-EKS.git']])
                }

            }
        }
        stage('Initializing Terraform'){
            steps{
               script{
                dir('EKS'){
                    sh 'terraform init'
                }
                } 
            }
        }
        stage('Format The Terraform'){
            steps{
               script{
                dir('EKS'){
                    sh 'terraform fmt'
                }
                } 
            }
        }
        stage('Validate Terraform'){
            steps{
               script{
                dir('EKS'){
                    sh 'terraform validate'
                }
                } 
            }
        }
        stage('Previewing the infra using Terraform'){
            steps{
               script{
                dir('EKS'){
                    sh 'terraform plan'
                }
                } 
            }
        }
        stage('Applying for creating/destroy EKS Cluster using Terraform'){
            steps{
               script{
                dir('EKS'){
                    sh 'terraform $action apply --auto-approve'
                }
                } 
            }
        }
    }
        
    }
