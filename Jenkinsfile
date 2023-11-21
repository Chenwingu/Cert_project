pipeline {
    
    agent any

  stages{
        stage('SCM Checkout') 
        {
          steps {
          git 'https://github.com/Chenwi/DevOpsCertProject.git'
          }
        }
        stage('Install puppetClient_docker')
       {
          steps {
          ansiblePlaybook credentialsId: 'jenkisnslave', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'dev.inv', playbook: 'Puppet_docker_playbook.yml'
          }
       }
         stage('Docker Deploy using Ansible playbook')
       {
          steps {
         ansiblePlaybook credentialsId: 'jenkisnslave', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'dev.inv', playbook: 'Deploy-docker.yml'
          }
       }
  }
  
}
