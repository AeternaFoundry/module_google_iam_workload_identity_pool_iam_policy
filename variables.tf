variable "iam_workload_identity_pool_iam_policies" {
  description = <<EOT
Map of iam_workload_identity_pool_iam_policies, attributes below
Required:
    - policy_data
    - workload_identity_pool_id
Optional:
    - project
EOT

  type = map(object({
    policy_data               = string
    workload_identity_pool_id = string
    project                   = optional(string)
  }))
}

