locals {
  env_config = {
  dev = {
    instance_count = 2
    bucket_count = 1
    dynamodb_table_count = 1
  }

  stg = {
    instance_count = 3
    bucket_count = 1
    dynamodb_table_count = 1
  }

  prd = {
    instance_count = 4
    bucket_count = 2
    dynamodb_table_count = 2
  }
}
current = lookup(local.env_config, terraform.workspace, local.env_config["dev"])

}

module "ec2" {
    source = "./modules/ec2"
    env = terraform.workspace # pass the environment variable to the module
    instance_count = local.current.instance_count # pass the instance count based on the current environment
}

module "s3" {
    source = "./modules/s3"
    env = terraform.workspace # pass the environment variable to the module
    s3_bucket_count = local.current.bucket_count # pass the bucket count based on the current environment
    
}
module "dynamodb" {
    source = "./modules/dynamodb"
    env = terraform.workspace # pass the environment variable to the module
    table_count = local.current.dynamodb_table_count # pass the table count based on the current environment
}