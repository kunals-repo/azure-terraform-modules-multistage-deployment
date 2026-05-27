🚀 Multi-Stage Terraform Deployment using GitHub Actions & Terraform Modules

📌 Project Summary

This project shows how to deploy Azure infrastructure using Terraform Modules and GitHub Actions with an Infrastructure as Code (IaC) approach across multiple environments such as Development, Testing, and Production.The workflow uses a Self-Hosted GitHub Runner to run Terraform commands and deploy Azure resources in different environment stages.


```text
The deployment pipeline supports:

✅ Development Environment (Dev)

✅ Testing Environment (Test)

✅ Production Environment (Prod)

✅ Multi-stage deployment workflow

✅ Infrastructure provisioning using Terraform modules

✅ Self-hosted runner execution model

✅ Secure deployment using Azure Service Principal authentication
```


```text
📈 Key Highlights :

🚀 Multi-stage GitHub Actions workflow

🏗️ Terraform-based Azure deployments

🖥️ Self-hosted runner integration

🔄 Environment-based infrastructure provisioning

📦 Reusable Terraform modules

🔐 Secure authentication mechanism

🌍 Azure cloud deployment automation

⚡ CI/CD implementation using GitHub Actions
```



## 📂 Project Structure

```text
terraform-multi-stage/
│
├── .github/
│   └── workflows/
│       └── terraform-deploy.yml
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── dev.tfvars
│   ├── test.tfvars
│   ├── prod.tfvars
│   │
│   └── vnet-modules/
│       └── output.tf
│       └── variables.tf
│       └── vnet-main.tf
│
└── README.md
```
