pipeline {
    agent any

    parameters {
        choice(
            name: 'ENV',
            choices: ['test', 'uat', 'prod'],
            description: 'Select the environment to deploy'
        )
    }

    environment {
        ENV_DIR = "environment/${params.ENV.toLowerCase()}"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Init') {
            steps {
                dir("${ENV_DIR}") {
                    sh 'terraform init -input=false'
                }
            }
        }

        stage('Validate') {
            steps {
                dir("${ENV_DIR}") {
                    sh 'terraform validate'
                }
            }
        }

        stage('Plan') {
            steps {
                dir("${ENV_DIR}") {
                    sh 'terraform plan -input=false -out=tfplan'
                }
            }
        }

        stage('Apply') {
            steps {
                dir("${ENV_DIR}") {
                    script {
                        if (params.ENV == 'uat' || params.ENV == 'prod') {
                            input message: "Do you want to apply changes to ${params.ENV}?"
                        }
                        sh 'terraform apply -input=false tfplan'
                    }
                }
            }
        }
    }   // 👈 closed stages properly

    post {
        always {
            cleanWs()
        }
    }
}
