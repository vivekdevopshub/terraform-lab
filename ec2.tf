resource "aws_instance" "MediaWiki-Server" {
  ami                    = "ami-04b1ddd35fd71475a"
  instance_type          = "t2.micro"
  name                   = "MediaWiki-Server"
  key_name               = "MediaWiki_key"           // Key can be managed separately but as of now key is assigned from console.
  vpc_security_group_ids = ["${aws_security_group.mediawiki-sg.id}"]
}
   
