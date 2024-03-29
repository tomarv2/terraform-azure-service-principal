#output "service_principal_object_id" {
#  value       = [for app in azuread_service_principal.this : app.object_id]
#  description = "The object id of the Service Principal."
#}

output "application_id" {
  value       = [for app in azuread_application.this : app.application_id]
  description = "The client (application) ID."
}

#output "service_principal_password" {
#  value       = [for app in azuread_service_principal_password.this : nonsensitive(app.value)]
#  description = "The password for the Service Principal."
#}
#
#output "service_principal_key_id" {
#  value       = [for app in azuread_service_principal_password.this : app.key_id]
#  description = "A UUID used to uniquely identify this password credential."
#}

output "client_secret" {
  value       = [for app in azuread_application_password.this : nonsensitive(app.value)]
  description = "The password for the Service Principal."
}

output "client_password" {
  value       = [for app in azuread_application_password.this : app.key_id]
  description = "A UUID used to uniquely identify this password credential."
}
