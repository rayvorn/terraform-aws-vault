output "asg_name" {
  value = aws_autoscaling_group.autoscaling_group.name
}

output "cluster_tag_key" {
  value = var.cluster_tag_key
}

output "cluster_tag_value" {
  value = var.cluster_name
}

output "cluster_size" {
  value = aws_autoscaling_group.autoscaling_group.desired_capacity
}

output "launch_config_name" {
  value = aws_launch_configuration.launch_configuration.name
}

output "iam_role_arn" {
  value = element(concat(aws_iam_role.instance_role.*.arn, [""]), 0)
  description = "This is the arn of instance role if enable_iam_setup variable is set to true"
}

output "iam_role_id" {
  value = element(concat(aws_iam_role.instance_role.*.id, [""]), 0)
  description = "This is the id of instance role if enable_iam_setup variable is set to true"
}

output "iam_role_name" {
  value = element(concat(aws_iam_role.instance_role.*.name, [""]), 0)
  description = "This is the name of instance role if enable_iam_setup variable is set to true"
}

output "security_group_id" {
  value = element(concat(aws_security_group.lc_security_group.*.id, [""]), 0)
  description = "This is the id of security group that governs ingress and egress for the vault instances if enable_security_groups is set to true"
}

output "s3_bucket_arn" {
  value = join(",", aws_s3_bucket.vault_storage.*.arn)
}

