resource "aws_launch_template" "public-launch-template-1" {
    name_prefix = "public-launch-template-1"
    image_id = var.launch_template_ami
    instance_type = var.launch_template_instance_type  

    network_interfaces {
        associate_public_ip_address = true
        subnet_id = aws_subnet.public-subnet-1.id 
        security_groups = [aws_security_group.launch-template-security-group-1.id]
    }
 
    placement {
        availability_zone = var.launch_template_az_1
    }

    tag_specifications {
      resource_type = "instance"
      tags = {
        Name = "Public Launch Template 1"
      }
    }
}

resource "aws_launch_template" "public-launch-template-2" {
    name_prefix = "public-launch-template-2"
    image_id = var.launch_template_ami
    instance_type = var.launch_template_instance_type

    network_interfaces {
        associate_public_ip_address = true
        subnet_id = aws_subnet.public-subnet-2.id 
        security_groups = [aws_security_group.launch-template-security-group-1.id]
    }

    placement {
        availability_zone = var.launch_template_az_2
    }

    tag_specifications {
      resource_type = "instance"
      tags = {
        Name = "Public Launch Template 2"
      }
    }
}

resource "aws_launch_template" "private-launch-template-1" {
    name_prefix = "private-launch-template-1"
    image_id = var.launch_template_ami
    instance_type = var.launch_template_instance_type

    network_interfaces {
      associate_public_ip_address = false 
      subnet_id = aws_subnet.private-subnet-1.id 
      security_groups = [aws_security_group.launch-template-security-group-2.id]
    }

    placement {
        availability_zone = var.launch_template_az_1
    }

    tag_specifications {
      resource_type = "instance"
      tags = {
        Name = "Private Launch Template 1"
      }
    }
}

resource "aws_launch_template" "private-launch-template-2" {
    name_prefix = "private-launch-template-2"
    image_id = var.launch_template_ami
    instance_type = var.launch_template_instance_type

    network_interfaces {
      associate_public_ip_address = false 
      subnet_id = aws_subnet.private-subnet-2.id
      security_groups = [aws_security_group.launch-template-security-group-2.id]
    }

    placement {
        availability_zone = var.launch_template_az_2
    }

    tag_specifications {
      resource_type = "instance"
      tags = {
        Name = "Private Launch Template 2"
      }
    }
}

resource "aws_eip" "eip-1" {
  domain = "vpc"
}

resource "aws_eip" "eip-2" {
  domain = "vpc"
}

resource "aws_nat_gateway" "public-subnet-1-nat-gateway" {
  allocation_id = aws_eip.eip-1.id
  subnet_id = aws_subnet.public-subnet-1.id 

  tags = {
    Name = "Public Subnet 1 Nat Gateway"
  }

  depends_on = [aws_internet_gateway.internet-gateway]

}

resource "aws_nat_gateway" "public-subnet-2-nat-gateway" {
  allocation_id = aws_eip.eip-2.id 
  subnet_id = aws_subnet.public-subnet-2.id 

  tags = {
    Name = "Public Subnet 2 Nat Gateway"
  }

  depends_on = [aws_internet_gateway.internet-gateway]

}