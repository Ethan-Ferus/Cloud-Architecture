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

Next, open a new file and name it network-layer.tf.This is where all our network resources will be coded

In the network-layer.tf, create a VPC resource 

<img width="290" height="81" alt="myvpc" src="https://github.com/user-attachments/assets/6c60b701-e020-42a5-8e94-f22fe91ca283" />

<img width="226" height="83" alt="myvpc cidr block" src="https://github.com/user-attachments/assets/7a1b284b-5dbb-4d08-bb14-fd5425bd1499" />

Next, in the same file create a Internet Gateway resource. This is what allows your private cloud network communicate to the internet and recieve replies

<img width="414" height="133" alt="Internet Gateway" src="https://github.com/user-attachments/assets/c8a6cf08-77b8-477c-a8ec-fd6bb3f8147c" />

Next, in the same file we creating 2 public subnets. This is where our machines will be operating.

<img width="375" height="200" alt="public subnet 1" src="https://github.com/user-attachments/assets/7202348f-aa78-457c-92f7-3379aded7d84" />

<img width="315" height="73" alt="public subnet 1 cidr block" src="https://github.com/user-attachments/assets/7e7d8012-f8ff-49d2-a3ae-8bb2aa49447a" />

<img width="240" height="74" alt="public subnet 1 az" src="https://github.com/user-attachments/assets/f2dad0f8-b57f-45a1-9fef-b1594b24bd84" />

<img width="369" height="192" alt="public subnet 2" src="https://github.com/user-attachments/assets/6767491c-3f9e-4e83-b5e2-e6ae1aef2632" />

<img width="310" height="80" alt="public subnet 2 cidr block" src="https://github.com/user-attachments/assets/bb8b148d-59aa-4748-856b-0f63b6f18267" />

<img width="251" height="77" alt="public subnet 2 az" src="https://github.com/user-attachments/assets/01cd2a9e-e9d2-476b-85e3-f1aea3f1e52e" />

