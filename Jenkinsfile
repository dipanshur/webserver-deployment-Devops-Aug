pipeline {
    agent any
    tools {
        maven 'M11'
    }
    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main',
                credentialsId: '52c18412-49de-40cc-9e20-92f002ded373',
                url: 'https://github.com/dipanshur/webserver-deployment-Devops-Aug.git'
            }
        }
        
        stage('MavenBuild') {
            steps {
                script {
                    withMaven(maven: 'M11') {
                        sh 'mvn clean install package'
                    }
                }
            }
        }
        
        stage('TransferFiles') {
            steps {
                sshPublisher(publishers: [sshPublisherDesc(configName: 'webserver', transfers: [sshTransfer(excludes: '', execCommand: '', execTimeout: 120000, flatten: true, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/usr/share/tomcat9/webapps/', remoteDirectorySDF: false, removePrefix: 'target/', sourceFiles: 'target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: true)])
                
            }
        }
    }
}
