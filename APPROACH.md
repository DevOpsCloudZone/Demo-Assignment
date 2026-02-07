# Approach Followed for the DevOps Deployment

This project was completed by following a structured DevOps workflow from infrastructure setup to automated deployment.

**1. Infrastructure Provisioning**

Terraform was used to create AWS infrastructure automatically.

Created an EC2 instance

Configured a security group to allow traffic on port 3000

Used AWS CLI credentials to allow Terraform to manage resources

This ensures infrastructure can be recreated anytime using code.

**2. Application Development**

A simple Node.js application was created to display a success message in the browser.

This acts as the application to be deployed and containerized.

**3. Containerization**

Docker was used to package the Node.js application.

Dockerfile created to build the image

Application runs inside a container

Ensures consistent environment across systems

**4. Manual Deployment (Initial)**

The Docker image was built and run manually on the EC2 instance to verify the application works before automation.

**5. CI/CD Automation**

Initially, Jenkins was considered and basic setup was started for automating deployment. However, as per the assignment requirement and for better integration with the GitHub repository, the pipeline was implemented using GitHub Actions.

Jenkins was explored to understand traditional CI/CD setup

Later switched to GitHub Actions as it is GitHub-native and easier to integrate

Pipeline triggers on push to the main branch

Connects to EC2 using SSH

Pulls the latest code

Stops old Docker container

Builds a new Docker image

Runs the updated container automatically

This approach ensured automated deployment directly from GitHub without needing a separate CI server.

**6. Documentation**

README Approach and Challenges files were added to explain the setup, decisions, and troubleshooting steps.
