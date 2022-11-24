multibranchPipelineJob('Git-Terraform') {
    branchSources {
        git {
           id('1')
            remote('git@github.com:KeepCodingCloudDevops6/ci-cd-juanantonio.git')
          	credentialsId('ssh-github-key')
        }
    }
}

multibranchPipelineJob('Storage') {
    branchSources {
        git {
           id('2')
            remote('git@github.com:KeepCodingCloudDevops6/cicdJuanAntonio.git')
          	credentialsId('ssh-github-key')
        }
    }
    factory {
        workflowBranchProjectFactory {
            scriptPath('Storage/Jenkinsfile')
        }
    }
}
