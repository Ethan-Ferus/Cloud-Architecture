resource "aws_db_instance" "private-rds-1" {
    db_name = "Private_rds_1"
    identifier = "myrds1"
    instance_class = var.private_rds_instance_class
    engine = var.private_rds_instance_engine
    engine_version = var.private_rds_instance_engine_version
    username = "Dan"
    password = var.private_rds_instance_password
    port = var.private_rds_instance_port
    allocated_storage = 20
    skip_final_snapshot = true
    availability_zone = var.private_rds_instance_az_1
}

resource "aws_db_instance" "private-rds-2" {
    db_name = "Private_rds_2"
    identifier = "myrds2"
    instance_class = var.private_rds_instance_class
    engine = var.private_rds_instance_engine
    engine_version = var.private_rds_instance_engine_version
    username = "Dan"
    password = var.private_rds_instance_password
    port = var.private_rds_instance_port
    allocated_storage = 20
    skip_final_snapshot = true
    availability_zone = var.private_rds_instance_az_2
}