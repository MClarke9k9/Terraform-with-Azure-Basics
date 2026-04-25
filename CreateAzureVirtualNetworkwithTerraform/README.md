# Create Azure Virtual Network with Terraform


This section deploys an Azure Virtual Network (VNet) and Subnet using Terraform.
--------------
<img width="908" height="566" alt="terraformVNetwork" src="https://github.com/user-attachments/assets/0f3107d8-9556-46bd-8a3d-95a8f524177b" />

The
```main.tf``` Creates:
- VNet: ```myVNet (10.0.0.0/16)```
- Subnet: ```mySubnet (10.0.1.0/24)```

Setup
- Update the resource group name in main.tf with your Azure Resource Group.

Deploy
```
terraform init
terraform plan
terraform apply
```
Result
- A VNet and Subnet are deployed in Microsoft Azure.






<img width="1718" height="732" alt="Screenshot 2026-04-25 at 2 04 12 PM" src="https://github.com/user-attachments/assets/94907b77-c768-4de5-9fec-3cd4dbb931cd" />
