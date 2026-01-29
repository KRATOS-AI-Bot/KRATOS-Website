
locals {
  random_int = random_integer.random.id
  bucket_name = "kratos-home-${local.random_int}"
}

resource "random_integer" "random" {
  min = 100
  max = 999
}
