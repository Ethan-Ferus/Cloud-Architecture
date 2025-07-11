# Cloud-Architecture

In this project, I am building a cloud architecture but please note I am using the network architcture and I am buidling on top of that.

You are welcome to use terraform registry to browse through the argument references for each resource

Services used in this project(VPC, Subnets, Route tables, Internet Gateway, Security Groups, Auto Scaling Group, Launch Template, Nat Gateway, RDS Database)

If you feeling confused, please refer to cloud-architeture.png

# Project Layout:

This is a visual representation of how the project layout is in VSCode

<img width="220" height="727" alt="Project Layout" src="https://github.com/user-attachments/assets/89121c33-a4a7-4873-9712-eb21be386776" />

First things first, create a folder and name it cloud architecture but you an name it whatever you want. You want to initalize the project folder by using the command terraform init.

Once that's done, create a provider.tf file. Terraform will recognise the provider that's where all you resource will be deployed e.g AWS

<img width="294" height="83" alt="provider" src="https://github.com/user-attachments/assets/aae013d2-686b-4dc2-8132-eac6503bf48c" />

<img width="227" height="78" alt="provider vars" src="https://github.com/user-attachments/assets/7c0869ee-f931-483b-a764-3f121e8241e9" />
