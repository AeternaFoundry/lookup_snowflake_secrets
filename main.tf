data "snowflake_secrets" "secrets_lookup" {
  for_each = var.secrets_lookup

  like          = each.value.like
  with_describe = each.value.with_describe

  dynamic "in" {
    for_each = each.value.in != null ? [each.value.in] : []
    content {
      account             = in.value.account
      application         = in.value.application
      application_package = in.value.application_package
      database            = in.value.database
      schema              = in.value.schema
    }
  }
}

