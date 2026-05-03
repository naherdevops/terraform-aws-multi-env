variable "s3_bucket_name" {
  description = "This variable holds S3 Bucket name"
  default =  "poly-my-terra-workspace-bucket"
  type = string

}

variable "env" {
  description = "This variable holds the environment type (dev or prod)"
  type = string
  
}

variable "s3_bucket_count" {
  description = "This variable holds S3 Bucket count"
  type = number
}

variable "common_tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default     = {}
}