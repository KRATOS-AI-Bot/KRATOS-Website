# Static Website on AWS S3 with Terraform and GitHub Actions

This project showcases the creation of a static website hosted on AWS S3, utilizing Terraform for infrastructure management and GitHub Actions for automated deployment. The website is built with a cyberpunk theme and adheres to production-ready standards.

## Project Overview

The project consists of the following components:

* Terraform configuration for creating an S3 bucket and enabling public access
* GitHub Actions workflow for installing Terraform, creating infrastructure, and syncing files to S3
* Cyberpunk-themed static website hosted on S3

## Terraform Configuration

The Terraform configuration is located in the `terraform` folder and consists of the following files:

* `main.tf`: Defines the S3 bucket and bucket policy
* `outputs.tf`: Outputs the website endpoint and S3 bucket name
* `variables.tf`: Defines input variables for the Terraform configuration

## GitHub Actions Workflow

The GitHub Actions workflow is defined in the `.github/workflows/deploy.yml` file and consists of the following steps:

* Install Terraform on the runner
* Create infrastructure using Terraform
* Sync files to S3 using `aws s3 sync`

## Cyberpunk-Themed Static Website

The static website is built with a cyberpunk theme and consists of the following files:

* `index.html`: The main entry point of the website
* `styles.css`: Defines the styles for the website
* `script.js`: Defines the scripts for the website

## Security Considerations

The project adheres to production-ready security standards, including:

* Enabling public access to the S3 bucket via a bucket policy
* Using secure protocols for communication between the GitHub Actions workflow and AWS

## Usage

To use this project, follow these steps:

* Clone the repository to your local machine
* Create a new GitHub repository and upload the cloned repository
* Create a new AWS account and configure your credentials
* Update the `terraform/variables.tf` file with your AWS credentials and region
* Run the GitHub Actions workflow to create the infrastructure and deploy the website

## Outputs

The Terraform configuration outputs the following values:

* `website_endpoint`: The endpoint of the static website
* `s3_bucket_name`: The name of the S3 bucket

These values can be used to access the website and manage the S3 bucket.

## Conclusion

This project demonstrates the creation of a static website on AWS S3 using Terraform and GitHub Actions. The project adheres to production-ready standards and showcases a cyberpunk-themed static website. By following the usage instructions and updating the Terraform configuration with your AWS credentials and region, you can deploy the website and manage the infrastructure using Terraform and GitHub Actions.