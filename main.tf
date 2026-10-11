resource "google_iam_workload_identity_pool_iam_policy" "iam_workload_identity_pool_iam_policies" {
  for_each = var.iam_workload_identity_pool_iam_policies

  policy_data               = each.value.policy_data
  workload_identity_pool_id = each.value.workload_identity_pool_id
  project                   = each.value.project
}

