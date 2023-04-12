## Instance

resource "aws_instance" "pe-server" { 
  ami                    = "${var.linux_ami}"
  instance_type          = "${var.aws_ami_size}"
  count                  = 1
  key_name               = "${var.key}"
  subnet_id              = module.networking.subnet_ids[count.index % length(module.networking.subnet_ids)]
  vpc_security_group_ids = module.networking.security_group_ids

  tags = {
    Name     = "pe_server_${count.index}"
    lifetime = "5d"
  }
}