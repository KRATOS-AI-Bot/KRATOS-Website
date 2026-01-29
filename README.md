# Static Website on AWS S3 with Terraform and GitHub Actions

## Table of Contents
1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Infrastructure](#infrastructure)
4. [Deployment](#deployment)
5. [Security](#security)
6. [Usage](#usage)

## Introduction
This project creates a static website on AWS S3 using Terraform for infrastructure management and GitHub Actions for deployment. The website is hosted directly on S3 without using CloudFront.

## Prerequisites
- AWS account with necessary permissions
- GitHub repository
- Terraform installed on local machine
- AWS CLI configured on local machine

## Infrastructure
The infrastructure is defined in the terraform folder and includes an S3 bucket with public access enabled via a bucket policy.

## Deployment
The deployment pipeline is defined in the .github/workflows folder and uses GitHub Actions to create the infrastructure and sync files to S3.

## Security
The S3 bucket has public access enabled via a bucket policy, and the AWS resources are created in the ap-south-1 region.

## Usage
To use this project, follow these steps:
- Clone the repository
- Configure your AWS credentials
- Run the Terraform code to create the infrastructure
- Push changes to the repository to trigger the deployment pipeline

This project provides a basic example of how to create a static website on AWS S3 using Terraform and GitHub Actions. It can be customized and extended to fit your specific needs.