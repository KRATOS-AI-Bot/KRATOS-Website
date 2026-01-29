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
- AWS Account
- GitHub Account
- Terraform installed on local machine
- AWS CLI configured on local machine

## Infrastructure
The infrastructure is defined in the terraform folder and consists of an S3 bucket with public access enabled.

## Deployment
The deployment pipeline is defined in the .github/workflows folder and uses GitHub Actions to create the infrastructure and sync files to S3.

## Security
The S3 bucket has a bucket policy that enables public access.

## Usage
To use this project, follow these steps:
- Clone the repository
- Configure your AWS credentials
- Run the GitHub Actions workflow to create the infrastructure and deploy the website
- Access the website using the endpoint output by Terraform

This project is designed to be production-ready and follows security best practices. The Terraform code uses security defaults and the S3 bucket has public access enabled via a bucket policy. The GitHub Actions workflow creates the infrastructure and syncs files to S3 using the aws s3 sync command.