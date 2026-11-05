terraform {
  # This block configures Terraform itself.
  # It declares which provider plugins are required for this configuration.
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# This resource block declares a local file that Terraform should manage.
# The `local_file` resource comes from the `hashicorp/local` provider.
# See the provider documentation: https://registry.terraform.io/providers/hashicorp/local/latest/docs
resource "local_file" "example" {
  # The content to write into the file.
  content  = "Hello, World!"

  # The file path where the content will be created.
  filename = "${path.module}/hello.txt"
}