terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.24.0"
    }
  }
}

provider "linode" {
}

resource "linode_lke_cluster" "lke_cluster" {
  label       = "challenge1"
  k8s_version = "1.24"
  region      = "eu-west"

  pool {
    type  = "g6-standard-2"
    count = 2
  }
}
