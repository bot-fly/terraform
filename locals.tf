locals {
  content_types = {
    ".html" : "text/html",
    ".css" : "text/css"
  }
}

variable "s3_bucket_names" {
  type = list(any)
  default = ["bucket1-k6jdf",
    "bucket2-k6jdf",
    "bucket3-k6jdf"
  ]
}
