resource "azuread_application" "this" {
  for_each          = var.applications_config != null ? var.applications_config : {}

  display_name      = each.key
  identifier_uris   = try(each.value.identifier_uris, null)
  sign_in_audience = each.value.sign_in_audience
  owners = each.value.owners
}

#resource "azuread_service_principal" "this" {
#  for_each          = {for k,v in azuread_application.this : k => v}
#
#  app_role_assignment_required = false
#  application_id = each.value.application_id
#  owners  = each.value.owners
#
#}
#
#resource "azuread_service_principal_password" "this" {
#  for_each          = {for k,v in azuread_service_principal.this : k => v}
#
#  service_principal_id = each.value.id
#}

# Manages a password credential associated with an application within Azure Active Directory. These are also referred to as client secrets during authentication.
resource "azuread_application_password" "this" {
  for_each          = {for k,v in azuread_application.this : k => v}

  application_object_id = each.value.object_id
}
