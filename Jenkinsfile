pipeline {
    agent any

    stages {

        stage('Restore') {
            steps {
                bat 'dotnet restore ProyectoJenkins.sln'
            }
        }

        stage('Build') {
            steps {
                bat 'dotnet build ProyectoJenkins.sln --no-restore'
            }
        }

        stage('Test') {
            steps {
                bat 'dotnet test ProyectoJenkins.sln --no-build'
            }
        }
    }
}