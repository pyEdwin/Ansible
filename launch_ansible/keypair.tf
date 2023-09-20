# Create a secure private key and ecodes it as PEM
resource "tls_private_key" "ec2_pkey" {
    algorithm = "RSA"
    rsa_bits = 2048
}

# Create a key pair
resource "aws_key_pair" "ec2_pkey" {
    key_name = var.kpair-name
    public_key = tls_private_key.ec2_pkey.public_key_openssh
  
}

# Save file
resource "loacl_file" "key_pair" {
    filename = "${var.kpair-name}.pem"
    content = tls_private_key.ec2_pkey.private_key_pem
  
}