resource "aws_route_table" "public-route-table" {
    vpc_id = aws_vpc.myvpc.id 

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.internet-gateway.id 
    }

    tags = {
        Name = "Public Route Table"
    }
}

resource "aws_route_table" "private-route-table" {
    vpc_id = aws_vpc.myvpc.id 

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.internet-gateway.id 
    }

    tags = {
        Name = "Private Route Table"
    }
}

resource "aws_route_table_association" "public-route-table-association-1" {
    subnet_id = aws_subnet.public-subnet-1.id
    route_table_id = aws_route_table.public-route-table.id 
}

resource "aws_route_table_association" "public-route-table-association-2" {
    subnet_id = aws_subnet.public-subnet-2.id
    route_table_id = aws_route_table.public-route-table.id 
}

resource "aws_route_table_association" "private-route-table-association-1" {
    subnet_id = aws_subnet.private-subnet-1.id
    route_table_id = aws_route_table.private-route-table.id 
}

resource "aws_route_table_association" "private-route-table-association-2" {
    subnet_id = aws_subnet.private-subnet-2.id
    route_table_id = aws_route_table.private-route-table.id 
}

resource "aws_route_table_association" "private-route-table-association-3" {
    subnet_id = aws_subnet.private-subnet-3.id
    route_table_id = aws_route_table.private-route-table.id 
}

resource "aws_route_table_association" "private-route-table-association-4" {
    subnet_id = aws_subnet.private-subnet-4.id
    route_table_id = aws_route_table.private-route-table.id 
}