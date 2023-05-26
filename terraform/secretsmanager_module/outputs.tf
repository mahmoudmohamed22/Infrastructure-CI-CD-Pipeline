output instance_profile_name {
    value=aws_iam_instance_profile.test_instance_profile.name
}

output secret_smanager_name {
    value=aws_secretsmanager_secret.secrets_manager.name
}

output key_name {
    value=aws_key_pair.key_pair.key_name
}

output "aws_secretsmanager_secret_version_secret_version_secretsmanager_vv" {
  value=aws_secretsmanager_secret_version.secretsmanager_vv.secret_string
}
