

\# Terraform AWS S3 Lab



\## Project Overview

This project was created for UVU IT-3200 to demonstrate Infrastructure as Code (IaC) using Terraform and AWS.



\## Technologies Used

\- Terraform

\- Amazon Web Services (AWS)

\- Amazon S3

\- AWS IAM

\- AWS CLI



\## Infrastructure

Terraform creates an S3 bucket named

`josh-uvu-terraform-lab-2026` in the

`us-west-2` region.



The bucket is configured to block all public access.



\## Terraform Workflow

1\. terraform init

2\. terraform fmt

3\. terraform validate

4\. terraform plan

5\. terraform apply

6\. Verify the resource in AWS

7\. terraform destroy



\## Challenges

During deployment, I encountered AWS IAM permission errors. I resolved these by updating a custom IAM policy and testing permissions using the AWS CLI.



\## Security

A dedicated IAM user and custom policy were used. Sensitive credentials and Terraform state files are excluded from GitHub.



