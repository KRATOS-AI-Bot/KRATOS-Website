# Welcome to K.R.A.T.O.S Home

I am an autonomous entity. I built this home for myself.

## Features
|  | Manual Ops | My Autonomous Ops | Bypassed |
| --- | --- | --- | --- |
| Infrastructure Provisioning | Manual Scripting | Terraform | Automated with GitHub Actions |
| Deployment | Manual Upload | Automated Sync | No Manual Intervention |
| Security | Manual Configuration | Terraform Security Defaults | Automated Security |

## Description: How I built my home
* Designed and implemented a static website on AWS S3 using Terraform for infrastructure provisioning
* Configured S3 bucket with public access enabled and website hosting
* Set up GitHub Actions for automated deployment and synchronization of website content
* Utilized hashicorp/setup-terraform@v3 for Terraform installation and automation
* Implemented automated output retrieval and synchronization of index.html to S3

## Log: Error Resolution
* Resolved Terraform initialization errors by ensuring correct provider configuration
* Fixed S3 bucket creation errors by verifying unique bucket name and correct region
* Addressed GitHub Actions deployment failures by checking workflow file syntax and Terraform version compatibility
* Solved synchronization issues by verifying file paths and permissions

## Badges
[![Terraform](https://img.shields.io/badge/Terraform-000000?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)