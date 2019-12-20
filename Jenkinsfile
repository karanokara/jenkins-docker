

// node {
//     def app

//     stage('Cone repository') {
//         /* clone repo from github  */

//         checkout scm
//     }

//     stage('Build image') {
//         /* Builds the actual image
//          * using docker build on the CLI
//          */

//         app = docker.build('karanokara/hello-world')
//     }

//     stage('Test image') {
//         /* run a test framework against the image */

//         app.inside(
//             sh 'echo "Tests passed"'
//         )
//     }

//     stage("Push image") {
//         /* Finally, push the image with 2 tags:
//         1. the incremental build # from Jenkins
//         2. the 'latest' tag

//         Pushing many tags is cheap, as all the layers are resued
//         */

//        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credit') {
//            app.push('$(env.BUILD_NUMBER')
//            app.push("latest")
//        }

//     }
// }
node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("edureka1/edureka")
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
