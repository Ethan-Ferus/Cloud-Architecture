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

# network-layer.tf file:
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

Next, in the same file we are creating 4 private subnets. Another 2 launch templates and 2 databases.This way we have  reliable infrastructure

<img width="386" height="200" alt="private subnet 1" src="https://github.com/user-attachments/assets/1e7bb51d-3776-4da2-99c3-7b51d925aead" />

<img width="322" height="77" alt="private subnet 1 cidr block" src="https://github.com/user-attachments/assets/f167d002-887d-4dcd-aef2-b2291397e5bc" />

<img width="261" height="80" alt="private subnet 1 az" src="https://github.com/user-attachments/assets/5e2b293b-93dd-4519-9454-a9ed2ed3cd57" />

<img width="382" height="195" alt="private subnet 2" src="https://github.com/user-attachments/assets/74f1f92e-0762-47df-a591-0d6a52365fc8" />

<img width="314" height="77" alt="private subnet 2 cidr block" src="https://github.com/user-attachments/assets/0b973f1d-ab86-4b56-b56f-75dc9784b16d" />

<img width="253" height="77" alt="private subnet 2 az" src="https://github.com/user-attachments/assets/fbf10358-97ca-4a87-a5d6-babd86baab03" />

<img width="380" height="195" alt="private subnet 3" src="https://github.com/user-attachments/assets/4ff027ae-a29e-45e9-af51-57d5d5f9ffe6" />

<img width="312" height="78" alt="private subnet 3 cidr block" src="https://github.com/user-attachments/assets/7be7df24-52fa-4d43-b467-39144d7236a1" />

<img width="257" height="82" alt="private subnet 3 az" src="https://github.com/user-attachments/assets/5bf96d54-a1b5-4cc1-bc7d-ec0a3a1919ad" />

<img width="383" height="198" alt="private subnet 4" src="https://github.com/user-attachments/assets/30e177d9-021d-4f76-88f6-11f2493d6607" />

<img width="317" height="78" alt="private subnet 4 cidr block" src="https://github.com/user-attachments/assets/fe803f54-4757-4824-9533-426b0f0a13bf" />

<img width="255" height="74" alt="private subnet 4  az" src="https://github.com/user-attachments/assets/c3502aff-5436-42c4-80d1-8e2d35349ad7" />

# compute-layer.tf file:
Next, open a new file and name it compute-layer.tf.In this file we will configure our machines and everything related to computing

In the compute-layer.tf file, configure 2 public launch templates. This will be our machines that will be running our infrastructure 

<img width="645" height="416" alt="public launch template 1" src="https://github.com/user-attachments/assets/75265df5-7477-40a6-9207-a1a1c3ef573a" />

<img width="308" height="81" alt="launch template ami" src="https://github.com/user-attachments/assets/5110f05d-5a3c-4d37-bb28-e1c31ce9b344" />

<img width="334" height="79" alt="launch template instance type" src="https://github.com/user-attachments/assets/e719546b-232c-4878-ac08-ce6965a35604" />

<img width="292" height="83" alt="launch template az 1" src="https://github.com/user-attachments/assets/a4da2917-0b79-42ae-9a57-b9950d7282d6" />


<img width="647" height="424" alt="public launch template 2" src="https://github.com/user-attachments/assets/97218a37-a449-4b24-b635-056be68f2716" />

<img width="308" height="81" alt="launch template ami" src="https://github.com/user-attachments/assets/70cfb2ae-c6c2-4797-b2bd-868bc1acdd6b" />

<img width="334" height="79" alt="launch template instance type" src="https://github.com/user-attachments/assets/0aaed5b4-86e8-4f69-996d-a6a8a8b0ec82" />

<img width="269" height="81" alt="launch template az 2" src="https://github.com/user-attachments/assets/789a3414-9d9a-46b7-b75f-d873653d1b05" />


<img width="624" height="422" alt="private launch template 1" src="https://github.com/user-attachments/assets/2976adc5-1695-4b50-beed-984260bd7bb2" />

<img width="308" height="81" alt="launch template ami" src="https://github.com/user-attachments/assets/605c53a6-e95f-4046-bc86-3f1d7fdb88da" />

<img width="334" height="79" alt="launch template instance type" src="https://github.com/user-attachments/assets/013ca962-f57a-4aca-a913-a342ae52d344" />

<img width="292" height="83" alt="launch template az 1" src="https://github.com/user-attachments/assets/9072eeb6-6e6c-4e33-a062-087bdecae008" />

<img width="622" height="428" alt="private launch template 2" src="https://github.com/user-attachments/assets/1db2ab8d-e90c-41b5-84df-e38d95eb9f00" />

<img width="308" height="81" alt="launch template ami" src="https://github.com/user-attachments/assets/758d3d63-4284-47f5-b659-99bf76983a7d" />

<img width="334" height="79" alt="launch template instance type" src="https://github.com/user-attachments/assets/4e35ce28-4fa3-4bab-a3d3-1d4512cbc41f" />

<img width="269" height="81" alt="launch template az 2" src="https://github.com/user-attachments/assets/c5f1cc51-6fef-45fa-94ab-592f20107ab1" />

In the same file, configure 2 EIPs(Elastic IP). This EIPs will be for our 2 public launch templates

<img width="227" height="60" alt="eip 1" src="https://github.com/user-attachments/assets/b972b672-66ef-48f3-80d0-f93dd2046c3d" />

<img width="233" height="63" alt="eip 2" src="https://github.com/user-attachments/assets/e059be5b-0a81-43e2-805a-b23ef1d459c4" />

Next, in the same file configure 2 NAT Gateways. A NAT Gateway enables outbound internet access from private subnets and it does not allow inbound traffic from the internet, protecting private resources

<img width="463" height="214" alt="nat gateway 1" src="https://github.com/user-attachments/assets/ac8d9d0a-ce96-47d0-bf96-eff60ffbce19" />

<img width="469" height="210" alt="nat gateway 2" src="https://github.com/user-attachments/assets/17ddd33e-7824-41ff-8939-cb6d9db01d6e" />

