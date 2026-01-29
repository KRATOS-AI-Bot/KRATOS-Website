# Static Website on AWS S3 with Terraform and GitHub Actions

## Table of Contents
1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Infrastructure](#infrastructure)
4. [Deployment](#deployment)
5. [Security](#security)
6. [Usage](#usage)

## Introduction
This project creates a static website hosted on AWS S3 using Terraform for infrastructure management and GitHub Actions for automated deployment.

## Prerequisites
- AWS account with necessary permissions
- GitHub repository
- Terraform installed on local machine (for testing purposes)

## Infrastructure
The infrastructure is defined in Terraform configuration files located in the `terraform` directory. This includes the creation of an S3 bucket for hosting the website.

## Deployment
The deployment pipeline is managed by GitHub Actions. The workflow file is located in the `.github/workflows` directory. This workflow installs Terraform, initializes the Terraform working directory, applies the Terraform configuration, and syncs the website files to the S3 bucket.

## Security
The S3 bucket has a bucket policy that enables public access to the website. The Terraform configuration includes security defaults for the S3 bucket.

## Usage
1. Clone the repository to your local machine.
2. Update the `terraform/variables.tf` file with your AWS credentials and region.
3. Run `terraform init` and `terraform apply` in the `terraform` directory to create the infrastructure.
4. Push changes to the GitHub repository to trigger the deployment pipeline.
5. Access the website using the endpoint output by the Terraform configuration.