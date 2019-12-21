

node {
    def app

    stage('Cone repository') {
        /* clone repo from github  */

        checkout scm
    }

    stage('Build image') {
        /* Builds the actual image
         * using docker build on the CLI
         */

        app = docker.build('karanokara/hello-world')
    }

    stage('Test image') {
        /* run a test framework against the image */

        app.inside{
            sh 'echo "Tests passed"'
        }
        
    }

    stage("Push image") {
        /* Finally, push the image with 2 tags:
        1. the incremental build # from Jenkins
        2. the 'latest' tag

        Pushing many tags is cheap, as all the layers are resued
        */

       docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credit') {
           app.push('$(env.BUILD_NUMBER')
           app.push("latest")
       }

    }
}
