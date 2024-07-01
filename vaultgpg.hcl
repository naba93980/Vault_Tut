# Storage backend using file storage
storage "file" {
    path = "/home/nabajyotimodak/vault/myconfigfilesgpg"
}

# Listener configuration
listener "tcp" {
  address     = "127.0.0.1:8300"
  tls_disable = 1  # Disable TLS for local development
}

# API address
api_addr = "http://127.0.0.1:8300"

# Enable UI
ui = true
