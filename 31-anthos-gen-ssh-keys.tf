resource "tls_private_key" "anthos_ssh_key" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "local_file" "anthos_priv_key" {
    content = chomp(tls_private_key.anthos_ssh_key.private_key_pem)
    filename = "anthos_ssh_priv_key"
    file_permission = "0600"
}

