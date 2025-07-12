resource "aws_autoscaling_group" "public-auto-scaling-group" {
    desired_capacity = 2
    max_size = 2
    min_size = 2
    vpc_zone_identifier = [aws_subnet.public-subnet-1.id,aws_subnet.public-subnet-2.id]

    launch_template {
        id = aws_launch_template.public-launch-template-1.id 
        version = "$Latest"
    }

}

resource "aws_autoscaling_group" "private-auto-scaling-group" {
    desired_capacity = 2
    max_size = 2
    min_size = 2
    vpc_zone_identifier = [aws_subnet.private-subnet-1.id,aws_subnet.private-subnet-2.id]

    launch_template {
        id = aws_launch_template.private-launch-template-1.id 
        version = "$Latest"
    }
}