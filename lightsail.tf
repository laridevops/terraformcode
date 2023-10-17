resource "aws_lightsail_instance" "CentOS" {
  name              = "CentOS"
  availability_zone = "us-east-1a"
  blueprint_id      = "centos_stream_9"
  bundle_id         = "nano_3_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This server was created using Terraform</h1>' | sudo tee /var/www/html/index.html"

}