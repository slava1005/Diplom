terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }          terraform validate

#  required_version = ">=0.13"
}

provider "yandex" {
  service_account_key_file     = filebase64("~/.ssh/sa-iam.json")
  token                        = var.yandex_cloud_token  # Для токена
  cloud_id                     = var.cloud_id
  folder_id                    = var.folder_id
  zone                         = var.default_zone
}
