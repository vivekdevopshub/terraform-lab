output "server-ip-output" {
  value = aws_instance.MediaWiki-Server.public_ip
}
