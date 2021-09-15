

resource "aws_instance" "tf_ec2" {
    ami           = "ami-087c17d1fe0178315"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.tf_sg.name]
    key_name = "Dev_Mac"
    tags = {
        Name = "Terraform-EC2"
    }
}
resource "aws_default_vpc" "main" {
    tags = {
        Name = "main"
    }
}
