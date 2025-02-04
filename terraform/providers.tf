terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=0.13"
}

provider "yandex" {
#  service_account_key_file = file("~/.ssh/sa-iam.json")
service_account_key = jsondecode(var.sa_key_content)
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.default_zone

}
variable "sa_key_content" {
  type = string
  description = "   "id": "aje8kdla0fs94g46ed2e",
   "service_account_id": "ajedatieiu4hb65vg1mt",
   "created_at": "2025-02-03T15:26:44.574431763Z",
   "key_algorithm": "RSA_2048",
   "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwWgE/xsV1lhTvuWldc+O\nPUlUQVER309dAfzmj273dsDYXVSA35yvl1mES4mEW6EKmb7WBWWnQJGbVKYaMq/T\nGcG5iO7osJqFHegFxaVfRv9wLQgMFK6vTPbzX+tadT2XBhqzJi5EwNdrtlyHq6jp\nAluTCiV4VCZsz5/5TZjscTnig7TjCVvVFHtiMTS5Qij/6QWQozi/0cuZ+67osDYs\nOcIMdozM9rgzEqOThqsopw4TSIBwsE4k8qRMf4cBnKeoC0InoNoEvUOcXveqTyhj\ni/ixHpj/J1L+D04sq38lusJ9ZNDvObIUAoMh2TgIktKvyBAREY9CjfiS9ZdwBbpr\ngQIDAQAB\n-----END PUBLIC KEY-----\n",
   "private_key": "PLEASE DO NOT REMOVE THIS LINE! Yandex.Cloud SA Key ID \u003caje8kdla0fs94g46ed2e\u003e\n-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDBaAT/GxXWWFO+\n5aV1z449SVRBURHfT10B/OaPbvd2wNhdVIDfnK+XWYRLiYRboQqZvtYFZadAkZtU\nphoyr9MZwbmI7uiwmoUd6AXFpV9G/3AtCAwUrq9M9vNf61p1PZcGGrMmLkTA12u2\nXIerqOkCW5MKJXhUJmzPn/lNmOxxOeKDtOMJW9UUe2IxNLlCKP/pBZCjOL/Ry5n7\nruiwNiw5wgx2jMz2uDMSo5OGqyinDhNIgHCwTiTypEx/hwGcp6gLQieg2gS9Q5xe\n96pPKGOL+LEemP8nUv4PTiyrfyW6wn1k0O85shQCgyHZOAiS0q/IEBERj0KN+JL1\nl3AFumuBAgMBAAECggEAQ7sQ3OH4YMsn8NdtfXeFYZMXjZQ9hQ2/DZ4qhBqhURYx\n72VTiHvPxloUCXwMPSaFltgNDXDPBL65Pgi5bfzDGecM+ZZpKMfETHff5ZqHZk64\nUxzZVjjirTpiernqQNqj1ABvsrRLYZlPYFrBLG2HxEqbkNcUb6vROVjVrsYaL4Aw\nbBRw3V3wsAsdljuLI+sX7XQ4UFkRN4UAyNE6WQ9m7MEN/+5OhZd04KSWf7dY63p8\nf9+ycXVWWdfAsDS88BEuuLcbxPVuvBO/QTAYxFybKB/PKfnkMVdxIW0fNoUNv24R\nxFKf+EiMi9d7/WQO7IXOF3dx96dPNqbnWiy/ik4gzQKBgQDJ5nSfCwjwZLm21vSG\ni9GmHVlgrhdZQOebV9//Yg9JYIeAukN8B880vAU6msOj0Sed/opHlW/IagtSSQQ+\nDR07uaKyveRzqBNf/BVFgOAlovOu8kPD2hl9w1v0WPdoMnNG/y1E1ApOqc63bfAI\n5CiVnlbRl4zpJ37aqopVBqQWKwKBgQD1OurKpinHQDSg7j5Dpn0NvXuaLDHKgES1\nl9E9oLfS7gU1ju4Utn4Qaw8agqey2TsV1qLYqL3FYYuqHXcBetZRknyHAuns17kx\n0BR83xZgdTHbNsXMRSoJQrJPe4TZM1xwbY3vGMk2i81CCtG3VGWE80NJl6SOF9kk\n3gSNqTb7AwKBgB/Eq0T7L4Tj1HT4jbE9/tbsd0vHGNVqaQcAZLaCb3VUQv32UPgL\nIodhrlDyWSZFmr45dvicguI+DVn9MzWwSpFDPF5zkqbAI4xO1eoBxUMmyMEWTaNb\nhfdL7gQcm5FBnvHk5PKXiqemAGjMW6CKhfhE2dRQzFNDa6pseye1y8vRAoGBANO2\n3eW+turyn30gslitb+Fg6UkdRo9RVgCA5YCTNKDCJXUrxJfVRdje1NdKXYWmzb/4\n4fazF8NEh9OCRK/eYRFjqmbVOSfkxlofDtEPuL3l7/kVvIayX6xHDLJaLUNneDMI\nIjV97JlO8RJHTO89ybeSXVE3vjV+mVWe58d1g6YJAoGAQFPz6Qr08Rg3o71/FVRR\npn786aBSU6GD/fAXokGNABvRWh4NKPsQTJNxXl5uVtBlNKSFfBZNMCvVM/R0X+uR\nyGkpVcuhRbBu+iKlUU+tUWAg6Lwt2CHko+jOBWK5Y0DEWFCdy+u2+yDHwLUVdN57\nswp2IOsa247cC8xKvzyW34k=\n-----END PRIVATE KEY-----\n"
}"
  sensitive   = true # Очень важно!
}
