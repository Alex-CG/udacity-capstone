[![CircleCI](https://circleci.com/gh/Alex-CG/udacity-devops-eng-capstone/tree/master.svg?style=svg)](https://circleci.com/gh/Alex-CG/udacity-devops-eng-capstone/tree/master)

# udacity-devops-eng-capstone
Capstone - Project 5

How is the project setup:

 * Tool used       : CircleCI
 * Deployment type : Rolling update

The deployment pipeline will include the following jobs:

1. lint-app          - Lint the Dockerfile
2. build-push-images - Build image locally and push it to DockerHub
3. test-cluster      - Test the cluster that will be used for the deployment
4. run-deployment    - Run the deployment with the updated image
5. test-deployment   - Test that the services are working properly after the deployment

To run the pipeline automatically just commit to the master branch of the repo.

 * GitHub repo link  : https://github.com/Alex-CG/udacity-devops-eng-capstone
 * CircleCI Pipeline : https://app.circleci.com/pipelines/github/Alex-CG/udacity-devops-eng-capstone?filter=all
 
