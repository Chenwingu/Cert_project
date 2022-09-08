pipeline {
    
    agent any

  stages{
        stage('SCM Checkout') 
        {
          steps {
          git 'https://github.com/nguchen/DevOpsCertProject.git'
          }
        }
        stage('Execute Ansible playbook')
       {
          steps {
          ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'dev.inv', playbook: 'playbook.yml'
          }
       }
       stage('Docker Deploy using Ansible playbook')
       {
          steps {
          ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'dev.inv', playbook: 'Deploy-docker.yml'
          }
       }
  }
  
}
