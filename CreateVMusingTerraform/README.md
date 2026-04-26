# Create Linux Virtual Machine with Terraform
In this section creates a complete VM infrastructure stack using Terraform

Overview

This section creates a complete VM infrastructure stack.

Files
- ```main.tf```
- ```providers.tf```
- ```variables.tf```
- ```ssh.tf```
- ```output.tf```

Resources Created
- Virtual Network
- Subnet
- Public IP
- Network Interface
- Network Security Group
- Storage Account
- SSH Key Pair
- Linux Virtual Machine

File Breakdown
- ```providers.tf```: Defines the AzureRM Provider, AzAPI Provider, and Random Provider which handles Azure resource deployment and SSH key generation.

- ```variables.tf```: Defines reusable variables like "```resource_group_location```" and sets deployment region to "```eastus```" and sets VM admin username to ```azureadmin```".

- ```main.tf```: deploys the core infrastructure in Microsoft Azure, including the resource group, virtual network, subnet, public IP, network interface, security group, storage account for boot diagnostics, and a Linux virtual machine running Ubuntu.

- ```ssh.tf```: Generates SSH key pair such as ```random_pet```, ```azapi_resource```, and ```azapi_resource_action``` that automates SSH key generation.

- ```output.tf```: Outputs VM public IP to use after deployment.

Deployment Process
- Step 1: Login to Azure
```az login```
- Step 2: Navigate into project folder
```cd CreateVMusingTerraform```
- Step 3: Initialize Terraform
```terraform init```
- Step 4: Validate
```terraform validate```
- Step 5: Plan deployment
```terraform plan```
- Step 6: Apply deployment
```terraform apply```
- Step 7: Get VM IP
```terraform output public_ip_address```
- Step 8: SSH into VM
```ssh azureadmin@<public-ip>```
----------
<img width="1560" height="855" alt="Screenshot 2026-04-25 at 2 22 06 PM" src="https://github.com/user-attachments/assets/204a0cb7-e0c7-4dbb-8d5d-0e1c399cbaf1" />
<img width="1560" height="855" alt="Screenshot 2026-04-25 at 2 22 06 PM" src="https://github.com/user-attachments/assets/204a0cb7-e0c7-4dbb-8d5d-0e1c399cbaf1" />
<img width="1502" height="847" alt="Screenshot 2026-04-25 at 2 21 48 PM" src="https://github.com/user-attachments/assets/9f4d1ec9-a2e2-49dc-b374-f83f89082754" />
<img width="1505" height="852" alt="Screenshot 2026-04-25 at 2 21 35 PM" src="https://github.com/user-attachments/assets/8a2123ee-66ac-4c3a-a4f7-edec95c608f6" />
<img width="1713" height="880" alt="Screenshot 2026-04-25 at 2 21 18 PM" src="https://github.com/user-attachments/assets/4ffcb447-0cfe-41b8-8bcf-65697c7207fd" />
------

### Security Best Practices
Do not hardcode:
- Resource group names
- Passwords
- Secrets

Use:
- Terraform variables
- Azure Key Vault
- Remote Terraform state
- Restrict NSG rules

Avoid opening SSH to all IPs.

Instead of:

```source_address_prefix = "*"```

Use your public IP.

### Troubleshooting
Provider Registration Error

Solution:

```az provider register --namespace Microsoft.Compute```

### Resource Group Not Found

Verify resource group exists:

```az group list --output table```

Storage Account Name Taken

Change the name or use random suffix.

Authentication Failure

Re-login:

```az login```


By completing this project you will understand:

- Terraform basics
- Azure provider configuration
- Terraform resources
- Variables and outputs
- Infrastructure deployment lifecycle
- Azure networking basics
- Azure VM provisioning
- Storage account deployment
- SSH automation





<img width="1701" height="859" alt="Screenshot 2026-04-25 at 2 25 48 PM" src="https://github.com/user-attachments/assets/825fc27e-6749-4720-b332-355e868f8623" />
