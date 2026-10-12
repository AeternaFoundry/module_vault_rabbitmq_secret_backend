variable "rabbitmq_secret_backends" {
  description = <<EOT
Map of rabbitmq_secret_backends, attributes below
Required:
    - connection_uri
    - username
Optional:
    - allowed_managed_keys
    - allowed_response_headers
    - audit_non_hmac_request_keys
    - audit_non_hmac_response_keys
    - default_lease_ttl_seconds
    - delegated_auth_accessors
    - description
    - disable_remount
    - external_entropy_access
    - force_no_cache
    - identity_token_key
    - listing_visibility
    - local
    - max_lease_ttl_seconds
    - namespace
    - options
    - passthrough_request_headers
    - password
    - password_policy
    - password_wo
    - password_wo_version
    - path
    - plugin_version
    - seal_wrap
    - username_template
    - verify_connection
EOT

  type = map(object({
    connection_uri               = string
    username                     = string
    allowed_managed_keys         = optional(set(string))
    allowed_response_headers     = optional(list(string))
    audit_non_hmac_request_keys  = optional(list(string))
    audit_non_hmac_response_keys = optional(list(string))
    default_lease_ttl_seconds    = optional(number)
    delegated_auth_accessors     = optional(list(string))
    description                  = optional(string)
    disable_remount              = optional(bool)
    external_entropy_access      = optional(bool)
    force_no_cache               = optional(bool)
    identity_token_key           = optional(string)
    listing_visibility           = optional(string)
    local                        = optional(bool)
    max_lease_ttl_seconds        = optional(number)
    namespace                    = optional(string)
    options                      = optional(map(string))
    passthrough_request_headers  = optional(list(string))
    password                     = optional(string)
    password_policy              = optional(string)
    password_wo                  = optional(string)
    password_wo_version          = optional(number)
    path                         = optional(string)
    plugin_version               = optional(string)
    seal_wrap                    = optional(bool)
    username_template            = optional(string)
    verify_connection            = optional(bool)
  }))
}

