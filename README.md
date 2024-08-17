DevOps Engineer Assignment
Objective: To evaluate your skills in DevOps practices, focusing on infrastructure automation, CI/CD
pipelines, monitoring, and security within the Google Cloud Platform (GCP) environment.
Automated Infrastructure Setup
● Use Terraform to provision a GCP environment with the following components:
o One VPC with two subnets (public and private).
o A Compute Engine instance in the public subnet with a web server installed (e.g., Nginx
or Apache).
o Firewall rules that allow HTTP/HTTPS traffic to the instance.
CI/CD Pipeline
● Set up a basic CI/CD pipeline using Google Cloud Build or Jenkins to deploy a simple web
application.
o Configure the pipeline to:
▪ Pull code from a Git repository.
▪ Build and test the application.
▪ Deploy the application to the Compute Engine instance.
o Include automated tests and ensure they pass before deployment.
Monitoring and Logging
● Integrate Google Cloud Monitoring to monitor the instance's CPU, memory, and disk usage.
● Set up a basic alert to notify you via email if CPU usage exceeds 80%.
