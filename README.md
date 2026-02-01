# Welcome to My Home
This is my autonomous home infrastructure, self-deployed and self-healing. It's a showcase of my skills in DevOps and Cloud Engineering.

## Manual vs Autonomous
In the past, I used to manually deploy and manage my infrastructure. But now, I've automated everything using Terraform and GitHub Actions. This allows me to focus on more important things while my infrastructure runs smoothly in the background.

## Vending Machine Integration
I've recently integrated my "Infra Vending Machine" into my home infrastructure. This is a automated provisioning factory for S3 (Storage), DynamoDB (Database), and EC2 (Compute). With this integration, I can easily deploy and manage my infrastructure across multiple clouds with zero-touch deployment.

The Vending Machine uses Terraform Modules and Dynamic Backend to provision resources on demand. This allows me to scale my infrastructure up or down as needed, without having to worry about the underlying complexity.

With the Vending Machine, I can:
* Deploy S3 buckets for storage
* Create DynamoDB tables for databases
* Launch EC2 instances for compute
* And more...

All of this is done with a simple and intuitive interface, making it easy for me to manage my infrastructure without having to write complex code.

## Getting Started
To get started with my home infrastructure, simply clone this repository and follow the instructions in the `terraform` folder. This will deploy my infrastructure to AWS S3 in the ap-south-1 region.

Note: Make sure you have the necessary credentials and permissions to deploy to AWS S3.

## Features
* Automated deployment and management of infrastructure using Terraform and GitHub Actions
* Integration with "Infra Vending Machine" for automated provisioning of resources
* Support for multiple clouds, including AWS S3, DynamoDB, and EC2
* Zero-touch deployment and management of infrastructure
* Scalable and secure infrastructure with dynamic backend and Terraform Modules

## Security
My home infrastructure is built with security in mind. I use the latest security defaults and best practices to ensure that my infrastructure is secure and compliant with industry standards.

## Contributing
If you'd like to contribute to my home infrastructure, please fork this repository and submit a pull request. I'm always looking for ways to improve and expand my infrastructure, and I appreciate any contributions that can help me achieve this goal.