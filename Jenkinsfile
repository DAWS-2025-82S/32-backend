@Library('jenkins-shared-library')_


// def configMap = [
//     greeting: "Hello,calling JENKINS Shared Library using Groovy"
// ]

// samplePipeline(configMap)



def configMap2 = [
    project: "expense",
    component: "backend"
]

//nodeJSEKSPipeline(configMap2)

if ( ! env.BRANCH_NAME.equalsIgnoreCase('main')){
    nodeJSEKSPipeline(configMap2S)
}
else{
    echo "Please follow production process"
}


// Will get error below if both samplePipeline and nodeJSEKSPipeline are invoked

// java.lang.IllegalStateException: Only one pipeline { ... } block can be executed in a single run.




// Create repo for JenkinsSharedLibrary

// https://github.com/DAWS-2025-82S/37-jenkins-shared-library.git

// Add the 37-jenkins-shared-library repo in Jenkins

// Go to Manage Jenkins --> Tools --> Global Trusted Pipeline Libraries and then add

// Libraray Name: jenkins-shared-library
// Default Version: maint
// Enable load Implicitly
// Retrival Method: Modern scm
// configure git repo url https://github.com/DAWS-2025-82S/37-jenkins-shared-library.git

// call the shared library from backend CI(32-backend) pipeline

// # import the library configured in Manage Jenkins
// @Library('jenkins-shared-library')_

// def configMap = [
//     project: "expense",
//     component: "backend"
// ]

// nodeJSEKSPipeline(configMap)