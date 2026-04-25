# Create Azure Storage Account with Terraform
## In this section we creates an Azure Storage Account using Terraform.
<img width="713" height="469" alt="terraformstorageaccount (1)" src="https://github.com/user-attachments/assets/cc7b325e-faed-4d7c-b680-27bc2564a90e" />

This
```main.tf```
Creates:

- Storage Account
- Standard performance tier
- Locally Redundant Storage (LRS)
- Terraform Breakdown
- Data Resource Group Lookup

Uses existing resource group data source.
Storage Account Resource
Deploys storage into the resource group.

#### Important Change Required

Replace:

```<resource-group-name>```

with your resource group.

Change storage account name:

```myStorageAccount```

Storage account names must be globally unique.

Deploy Steps
```
terraform init
terraform plan
terraform apply
```
Expected Result
-Azure Storage Account created








<img width="1502" height="847" alt="Screenshot 2026-04-25 at 2 21 48 PM" src="https://github.com/user-attachments/assets/a3b8661c-6928-4b5d-b5e6-5f9d3c2c1de3" />
