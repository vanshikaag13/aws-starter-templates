# AWS Infra Creation Terraform Templates

This repository contains Terraform templates for creating a basic AWS infrastructure setup, including components such as ECS, route tables, public and private subnets, RDS, SSM, Elasticache, and more. These templates serve as a starting point for deploying scalable and secure applications on AWS.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Components](#components)
- [Usage](#usage)
- [License](#license)

## Overview

The AWS Infra Creation Terraform Templates provide a modular approach to deploying essential AWS services. Whether you are building microservices on ECS or setting up a database with RDS, these templates help streamline the process.

## Features

- Create ECS clusters and services
- Set up public and private subnets
- Configure route tables and subnet associations
- Deploy RDS instances with PostgreSQL
- Integrate Elasticache for caching
- Utilize SSM for parameter management
- Configure security groups for access control
- Manage task definitions and service scaling

## Prerequisites

Before you begin, ensure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine
- AWS account with appropriate permissions
- AWS CLI configured with your credentials

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/AWS-Infra-Creation-tf-templates.git
   cd AWS-Infra-Creation-tf-templates
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Review the configuration files and modify variables as needed.

4. Plan the deployment:
   ```bash
   terraform plan
   ```

5. Apply the configuration:
   ```bash
   terraform apply
   ```

## Components

- **ECS**: Define your containers and services for deploying microservices.
- **RDS**: Provision PostgreSQL databases for data storage.
- **Elasticache**: Set up Redis or Memcached for caching solutions.
- **Subnets**: Create public and private subnets for network segmentation.
- **Route Tables**: Configure routing rules for your subnets.
- **SSM**: Use AWS Systems Manager for managing application parameters.
- **Security Groups**: Manage inbound and outbound traffic rules.

## Usage

Each template is designed to be reusable and modular. You can mix and match components based on your requirements. Refer to the individual directory READMEs for more specific usage instructions.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
