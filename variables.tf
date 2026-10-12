variable "secrets_lookup" {
  description = <<EOT
Map of secrets_lookup, attributes below
Optional:
    - like
    - with_describe
    - in (block):
        - account (optional)
        - application (optional)
        - application_package (optional)
        - database (optional)
        - schema (optional)
EOT

  type = map(object({
    like          = optional(string)
    with_describe = optional(bool)
    in = optional(object({
      account             = optional(bool)
      application         = optional(string)
      application_package = optional(string)
      database            = optional(string)
      schema              = optional(string)
    }))
  }))
}

