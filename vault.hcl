# Storage backend using file storage
storage "file" {
    path = "/home/nabajyotimodak/vault/myconfigfiles"
}

# Listener configuration
listener "tcp" {
  address     = "127.0.0.1:8200"
  tls_disable = 1  # Disable TLS for local development
}

# API address
api_addr = "http://127.0.0.1:8200"

# Enable UI
ui = true
