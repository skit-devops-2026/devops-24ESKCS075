pipeline {
    agent any

    options {
        timestamps()
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Environment') {
            steps {
                sh 'python3 --version'
            }
        }

        stage('Automated Tests') {
            steps {
                sh 'python3 -m unittest discover -s tests -v'
            }
        }

        stage('Build Checks') {
            steps {
                sh '''
                    python3 -c "from pathlib import Path; files = ['index.html', 'add-expense.html', 'budget.html', 'css/shared.css', 'css/style.css', 'js/app.js']; missing = [f for f in files if not Path(f).is_file()]; print('Missing files:', missing) if missing else print('BILLBOOK build checks passed'); raise SystemExit(bool(missing))"
                '''
            }
        }
    }

    post {
        success {
            echo 'BILLBOOK pipeline passed.'
        }
        failure {
            echo 'BILLBOOK pipeline failed. Check the console output.'
        }
    }
}
