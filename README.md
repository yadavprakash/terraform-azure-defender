# terraform-azure-defender
# Terraform Azure Infrastructure

This Terraform configuration defines an Azure infrastructure using the Azure provider.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Examples](#examples)
- [License](#license)

## Introduction
This repository contains Terraform code to deploy resources on Microsoft Azure, including a resource group and a azure-defender.

## Usage
To use this module, you should have Terraform installed and configured for AZURE. This module provides the necessary Terraform configuration
for creating AZURE resources, and you can customize the inputs as needed. Below is an example of how to use this module:

# Example

```hcl
module "defender" {
  source      = "git::https://github.com/yadavprakash/terraform-azure-defender.git?ref=v1.0.0"
  resource_id = module.storage.default_storage_account_id
}
```
This example demonstrates how to create various AZURE resources using the provided modules. Adjust the input values to suit your specific requirements.

## Module Inputs
The following input variables can be configured:

- 'target_resource_id': The ID of the Azure Resource which to enable Advanced Threat Protection on.
- 'enabled':  Should Advanced Threat Protection be enabled on this resource?

## Module Outputs
- 'defender_id': The ID of the Advanced Threat Protection resource.

# Examples
For detailed examples on how to use this module, please refer to the '[example](https://github.com/yadavprakash/terraform-azure-defender/blob/master/example)' directory within this repository.

# License
This Terraform module is provided under the '[License Name]' License. Please see the [LICENSE](https://github.com/yadavprakash/terraform-azure-defender/blob/master/LICENSE) file for more details.

# Author
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.90.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=2.90.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_advanced_threat_protection.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/advanced_threat_protection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | Resource Id for which defender has to be enabled} | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_defender_id"></a> [defender\_id](#output\_defender\_id) | The ID of the Advanced Threat Protection resource. |
<!-- END_TF_DOCS -->