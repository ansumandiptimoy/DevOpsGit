provider "jenkins" {
  url      = "http://localhost:8080/"
  username = "ansuman"
  password = "ansuman"
}

resource "jenkins_job" "pipeline_job" {
  name     = "ansu_pipeline_job"
  config   = <<EOF
<flow-definition plugin="workflow-job@2.40">
  <description>My Pipeline Job</description>
  <definition class="org.jenkinsci.plugins.workflow.cps.CpsFlowDefinition" plugin="workflow-cps@2.86">
    <script>pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Building..."'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Testing..."'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying..."'
            }
        }
    }
}</script>
  </definition>
</flow-definition>
EOF
}
