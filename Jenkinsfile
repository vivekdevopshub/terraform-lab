pipeline {
    agent any
        tools {
            terraform 'terraform'
            }

    stages{
           stage('Git Checkout '){
              steps{
               git branch: '**', credentialsId: 'Github_credentials', url: 'https://github.com/vivekdevopshub/terraform-lab'
                   }
                              }
           stage('Terraform Init'){
              steps{
                 sh 'terraform init'
                 }
                              }
           stage('Terraform Plan'){
              steps{
                 sh 'terraform plan'
                 }
                              }
           stage('Terraform Apply'){
              steps{
                 sh 'terraform apply --auto-approve'
                 sh 'echo [webservers] > dev.inv'
                 sh 'echo $(terraform output server-ip-output) ansible_user=ec2-user >> dev.inv'
                     }  
                       }   
                     
           stage('Execute Ansible Playbook for MediaWiki Installation') {
              steps {
               ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'ansible2', inventory: 'dev.inv', playbook: 'mediawiki.yaml'
               
                }   
                   }  
                              
         }
}
