resource "aws_instance" "project-iac" {
  ami = "ami-0574da719dca65348"
  instance_type = "t2.large"
  subnet_id = "subnet-0b58595f6e886f1e0"
  key_name = "udit"
  root_block_device {
    delete_on_termination = true
    iops = 150
    volume_size = 50
    volume_type = "gp2"
  }
  tags = {
    Name ="SERVER01"
    Environment = "DEV"
    OS = "WINDOWS"
  }

}
