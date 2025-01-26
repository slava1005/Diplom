terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
#      source = "yandex-cloud/yandex"
#      version = "0.135.0"
    }
  }
}

provider "yandex" {
  service_account_key_file     = file("~/.ssh/sa-iam.json")
#  token     = TOKEN
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.default_zone
}
