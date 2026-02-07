# Challenges Faced During Deployment

**1. Application not opening in browser****

Issue: App was running but not accessible through public IP.
Fix: Opened port 3000 in AWS Security Group.

**2. Terraform credential error**

Issue: Terraform showed No valid credential sources found.
Fix: Configured AWS credentials using:

aws configure

**3. Wrong AMI ID and Key Pair**

Issue: Terraform failed due to invalid AMI ID and key pair name.
Fix: Used correct AMI format (ami-xxxx) and AWS key pair name (not .pem file name).

**4. GitHub Actions couldn't find project folder**

Issue: Pipeline error:

cd: Demo-Assignment: No such file or directory


Fix: Moved project to correct path:

/home/ubuntu/Demo-Assignment


and gave ubuntu user permissions.

**5. Docker port already in use**

Issue: Deployment failed with:

port 3000 is already allocated


Fix: Stopped and removed old containers before starting new one.

**6. SSH issue in CI/CD**

Issue: GitHub Actions couldn't connect to EC2.
Fix: Added full private key to GitHub Secrets as EC2_SSH_KEY.
