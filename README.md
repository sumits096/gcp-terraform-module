# Terraform

Terraform is an infrastructure as code (IaC) tool that allows you to build, change, and version infrastructure safely and efficiently. This includes both low-level components like compute instances, storage, and networking, as well as high-level components like DNS entries and SaaS features.

#### Clone a copy of the repo:

```bash
https://github.com/goboomtown/terraform.git
```

#### Change to the terraform directory:

```bash
cd terraform
```

## What's included

Within the download you'll find the following directories and files:

```
terraform
├── docs
|    └── checklist.md
├── modules
|    ├── build_trigger_on_pubsub
|    |   ├── data.tf
|    |   ├── main.tf
|    |   ├── output.tf
|    |   ├── provider.tf
|    |   └── variables.tf
|    ├── build_trigger_on_pull
|    |   ├── data.tf
|    |   ├── main.tf
|    |   ├── output.tf
|    |   ├── provider.tf
|    |   └── variables.tf
|    └── build_trigger_on_push
|        ├── data.tf
|        ├── main.tf
|        ├── output.tf
|        └── variables.tf
├── data.tf
├── main.tf
├── output.tf
├── provider.tf
├── terraform.auto.tfvars
├── variables.tf
└── README.md
```

## Overview

### provider.tf

Provider configurations belong in the root module of a Terraform configuration. Providers allow Terraform to interact with cloud providers, SaaS providers, and other APIs.

### main.tf

will contain the main set of configuration for your module. You can also create other configuration files and organize them however makes sense for your project.

### data.tf

Data sources allow Terraform to use information defined outside of Terraform, defined by another separate Terraform configuration, or modified by functions.
Fetch values from our infra/provider and and provides data for our resource to provision infra/resource.

### output.tf

will contain the output definitions for your module. Module outputs are made available to the configuration using the module, so they are often used to pass information about the parts of your infrastructure defined by the module to other parts of your configuration.

### variables.tf

will contain the variable definitions for your module. When your module is used by others, the variables will be configured as arguments in the module block. Since all Terraform values must be defined, any variables that are not given a default value will become required arguments. Variables with default values can also be provided as module arguments, overriding the default value.

## DOCS

[Check-List](/docs/checklist.md)

## Author

Boomtown Team <developers@goboomtown.com>
