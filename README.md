# Static Website on AWS S3 with Terraform and GitHub Actions

This project showcases the creation of a static website hosted on AWS S3, utilizing Terraform for infrastructure management and GitHub Actions for automated deployment. The website is built with a cyberpunk theme and adheres to security best practices.

## Project Overview

The project consists of the following components:

* Terraform configuration for creating an S3 bucket and enabling public access
* GitHub Actions workflow for deploying the website to S3
* Cyberpunk-themed static website

## Terraform Configuration

The Terraform configuration is located in the `terraform` folder and consists of the following files:

* `main.tf`: Defines the S3 bucket and enables public access
* `outputs.tf`: Outputs the website endpoint and S3 bucket name
* `versions.tf`: Specifies the Terraform version and AWS provider

## GitHub Actions Workflow

The GitHub Actions workflow is defined in the `.github/workflows/deploy.yml` file and consists of the following steps:

* Loads AWS credentials from repository secrets
* Installs Terraform on the runner
* Creates the infrastructure using Terraform
* Syncs the website files to S3 using `aws s3 sync`

## Cyberpunk-Themed Static Website

The static website is built with HTML, CSS, and JavaScript, and features a cyberpunk theme. The website is located in the `website` folder and consists of the following files:

* `index.html`: The main entry point of the website
* `styles.css`: Defines the website's styles and layout
* `script.js`: Adds interactivity to the website

## Security Considerations

The project adheres to security best practices, including:

* Using secure protocols for communication (HTTPS)
* Enabling public access to the S3 bucket via a bucket policy
* Using least privilege access for the AWS credentials

## Deployment

To deploy the website, simply push changes to the repository, and the GitHub Actions workflow will automatically create the infrastructure and sync the website files to S3.

## Outputs

The Terraform configuration outputs the following values:

* `website_endpoint`: The URL of the deployed website
* `s3_bucket_name`: The name of the S3 bucket hosting the website

## Conclusion

This project demonstrates the creation of a static website on AWS S3, utilizing Terraform and GitHub Actions for automated deployment. The website features a cyberpunk theme and adheres to security best practices, making it a robust and scalable solution for hosting static content.